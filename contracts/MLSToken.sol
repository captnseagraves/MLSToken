pragma solidity ^0.4.9;

contract MLSToken {
  uint mlsNumber;
  string homeAddress;
  uint valueOfHome;
  address owner;

  function MLSToken(
    uint _mlsNumber,
    string _homeAddress,
    uint _valueOfHome){

    owner = msg.sender;

    mlsNumber = _mlsNumber;
    homeAddress = _homeAddress;
    valueOfHome = _valueOfHome;
  }

  function changeOwner onlyOwner(address _receiver){
    owner = _receiver;
  }

  modifier onlyOwner(){
    if(msg.sender !== owner){
      throw;
    }
  }

}
