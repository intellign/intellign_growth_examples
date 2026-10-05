import os
from intellign_growth import Growth

key=os.environ['GROWTH_SERVER_KEY']
growth=Growth(key)

def record_order(order_id:str,user_id:str,total:float):
    growth.identify(user_id)
    return growth.track('purchase',{
        'orderId':order_id,
        'value':total,
        'currency':'USD',
        'source':'python_server'
    })

if __name__=='__main__':
    print(record_order('demo_order_001','demo_customer_123',79.0))
