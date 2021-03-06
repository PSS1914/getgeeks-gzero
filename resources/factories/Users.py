from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'De Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'abc123'
        },
        'login': {
            'name': 'Fernando',
            'lastname': 'Papito',
            'email': 'papito@hotmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'           }
        },
        "short_desc": {
            'name': 'Peter',
            'lastname': 'Jordam',
            'email': 'peter@einerd.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '21999999999',
                'desc': 'Formato o seu PC',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }
        },
        "long_desc": {
            'name': 'Dio',
            'lastname': 'Linux',
            'email': 'dio@linux.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unity',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }         
        },
        "empty_desc": {
            'name': 'Elon',
            'lastname': 'Musk',
            'email': 'Elon@spacex.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': '',
                'printer_repair': 'Sim',
                'work': 'Ambos',
                'cost': '1000'
           }
        },
        "user_wpp": {
            'name': 'Mark',
            'lastname': 'Zuckerberg',
            'email': 'Mark@meta.com',
            'password': 'pwd123'
        },
        "user_cost": {
            'name': 'Frank',
            'lastname': 'Miller',
            'email': 'Frank@demolidor.com',
            'password': 'pwd123'
        }
        
    }


    return data[target]