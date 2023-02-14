import logging as log
import aws_handler
import crop_selfies

"""
Download and preprocess files
"""

def preprocess():
    request = aws_handler.get_sqs_request() # get sqs request and download file
    if not request:
        log.error("No SQS request. Shutting down") #TODO CloudWatch Alarm
    crop_selfies.crop_selfies()

preprocess()
