import React from 'react'
import './Item.css'
import { useNavigate } from "react-router-dom";

// CSS for modal is in item.css

function Modal({item, closeModal}) {

    // console.log(item)

    const navigate = useNavigate()

    const {item_name, description, original_pricing, condition, image_url} = item

    return (
        <div className='modal scroll'> 
            <div className='modal-content'> 
                <div className='bttndiv'>
                    <button id='bttn' onClick={closeModal}>X</button>
                </div>
                
                <div className='modal-img-container'>
                    <img className="image"src={image_url} alt={`item of ${item_name}`}/>
                </div>

                    <div className='info-about-item'>
                    <h2>Item: {item_name}</h2>
                        <p>Description: {description}</p>
                        <p>Original Price: ${original_pricing}</p>
                        <p>Condition: {condition}/10</p>
                    </div>

                    <div>
                    <button className="tradingButton" onClick={() => navigate("/request") }>REQUEST A TRADE</button>
                    </div>

          </div>
        </div>
    )
}

export default Modal;

