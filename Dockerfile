# Step 1: Base image
FROM python:3.10-slim

# Step 2: Working directory
WORKDIR /app

# Step 3: Copy project files
COPY . .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port and run
EXPOSE 2000
CMD ["pytho", "appy.py"]
