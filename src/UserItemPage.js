import React from 'react'
import UserItemContainer from './UserItemContainer'

function UserItemPage({userItems}) {

  console.log(userItems)
  const {bio, full_name, location, items} = userItems
  // console.log(items)


  // console.log(items)
 
  // const mappedItems = items.map(item => {
  //   console.log(item)
  //   return <UserItemContainer 
  //     key={item.id}

  //   />
  // })
  
    return (
      <>
        {/* <h1>{full_name}</h1>
        <h3>Location: {location}</h3>
        <h3>Bio: {bio}</h3> */}



      </>

    )
}

export default UserItemPage