import React from 'react';
import {createRoot} from 'react-dom/client';
import {Growth} from '@intellign/growth';
import './style.css';

const key=import.meta.env.VITE_GROWTH_KEY;
const growth=new Growth({key});

const steps=[
 ['product_view',{product:'Studio Lamp',value:79}],
 ['add_to_cart',{product:'Studio Lamp',value:79}],
 ['signup',{method:'email'}],
 ['purchase',{product:'Studio Lamp',value:79,currency:'USD'}]
] as const;

function App(){
 const[status,setStatus]=React.useState('Ready.');
 const run=async(event:string,properties:Record<string,unknown>)=>{
   if(event==='signup')growth.identify('demo_customer_123');
   await growth.track(event,properties);
   setStatus(`Sent ${event} to Growth.`);
 };
 return <main><p className="eyebrow">INTELLIGN GROWTH · REACT</p><h1>Watch a customer journey become evidence.</h1><p>Run the journey, then verify JavaScript activity in Growth.</p><div className="actions">{steps.map(([event,props])=><button key={event} onClick={()=>run(event,props)}>{event.replaceAll('_',' ')}</button>)}</div><p className="status">{status}</p></main>
}
createRoot(document.getElementById('root')!).render(<App/>);
