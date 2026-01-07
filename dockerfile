FROM python:3.14
WORKDIR /stucture1
COPY . .
RUN pip install --no-cache-dir  pytest
# Run tests at build time (CI)
RUN pytest
# FIXED entrypoint (never replaced)
ENTRYPOINT ["python", "studentdetails.py"]