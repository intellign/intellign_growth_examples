import os
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from intellign_growth import Growth

KEY=os.environ.get('GROWTH_KEY','')
APP_ID=os.environ.get('GROWTH_APP_ID','com.example.growthkivy')
growth=Growth(KEY,app_id=APP_ID)

class Demo(App):
    def build(self):
        root=BoxLayout(orientation='vertical',padding=24,spacing=10)
        root.add_widget(Label(text='Intellign Growth · Kivy\nA tiny business journey'))
        self.status=Label(text='Ready.')
        for event in ('product_view','add_to_cart','signup','purchase'):
            button=Button(text=event.replace('_',' '))
            button.bind(on_press=lambda _,e=event:self.send(e))
            root.add_widget(button)
        root.add_widget(self.status)
        return root
    def send(self,event):
        if event=='signup': growth.identify('demo_customer_123')
        growth.track(event,{'product':'Studio Lamp','value':79})
        self.status.text=f'Sent {event} to Growth.'

Demo().run()
