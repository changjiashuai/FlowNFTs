import BottomShot from 0xf8d6e0586b0a20c7

pub fun main(acct: Address): [UInt64] {
  let account = getAccount(acct)
     let publicRef = account.getCapability(/public/BottomShot2)
            .borrow<&BottomShot.Collection{BottomShot.CollectionPublic}>()
            ?? panic ("Oof ouch owie this account doesn't have a collection there")

  return publicRef.getIDs()
}