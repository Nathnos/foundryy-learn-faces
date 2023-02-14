"""
(file) : Handle AWS (Amazon Web Services)
"""
import regex
TRAIN_TEMPLATE = 'train_template.bat'
TRAIN_FILE = 'train.bat'

"""
Retrieve a request from the SQS queue storing requests of face learning
"""
def get_sqs_request():
    # TODO get an SQS request
    request = []
    user = 'Lorenzo' # TODO get from request
    gender = 'man' #TODO get from request
    with open(TRAIN_TEMPLATE, 'r') as file :
        filedata = file.read()
    filedata = regex.sub('@', user, filedata, 1)
    filedata = regex.sub('@', gender, filedata, 1)
    with open(TRAIN_FILE, 'w') as file:
        file.write(filedata)
    return download_images(request)

"""
Download selfies of the user.
"""
def download_images(request):
    # TODO get from S3 buckets
        return True
