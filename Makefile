all: apk

apk: clean
	./gradlew assembleRelease --no-build-cache

clean:
	./gradlew clean

test:
	./gradlew testDebugUnitTest

test-coverage:
	./gradlew testDebugCoverageUnitTest && \
    awk -F"," '{ instructions += $$4 + $$5; covered += $$5 } END { print covered, "/", instructions, "instructions covered"; print "Total", 100*covered/instructions "% covered" }' app/build/test-results/jacoco.csv

lint:
	./gradlew lintDebug

codecov:
	bash <(curl -s https://codecov.io/bash)

sonar:
	./gradlew sonarqube

ci: clean lint test-coverage apk
