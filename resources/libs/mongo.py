from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://vmarreiros1:ydw9hKFT0OrkfN40@cluster0-markx.k4wev3v.mongodb.net/MarkX?retryWrites=true&w=majority&appName=Cluster0-markX')

db = client['MarkX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    
    print(f'Removendo a tarefa {task_name}')
