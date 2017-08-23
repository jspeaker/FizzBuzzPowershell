# Test First (or Die)
The tests in this project were developed via true TDD (test first) and evolved from the simplest form to their current form.

# CI Build and Test
The build has been automated (CI) via VSTS. After the successful VS Solution build a Powershell script build step installs Pester on the 
Hosted agent and runs all Pester tests. The Pester test results are saved in NUnit format so that they can be viewed in the build results Tests tab. 
