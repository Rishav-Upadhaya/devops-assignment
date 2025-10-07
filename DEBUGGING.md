# DEBUGGING.md

## Part A - Pipeline Explanation
This pipeline has two jobs:
1. **test-job** → Runs Python tests to ensure the app runs correctly.
2. **build-job** → Builds the Docker image but only runs after test-job succeeds (using `needs: test-job`).

The pipeline triggers on every push to the `main` branch.
The `needs:` keyword ensures a proper dependency chain — preventing builds if tests fail.

## 🕵️ Part B – The "Break & Fix" Challenge

### 🔹 Step 1: The Intentional Break
To simulate a real debugging scenario, I intentionally introduced an error in the `Dockerfile` by modifying the final lines:
```Dockerfile
EXPOSE 2000
CMD ["python", "appy.py"]