pragma solidity ^0.4.9;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';


contract MLSToken is Ownable {

  uint public mlsNumber;
  string public homeAddress;
  uint public valueOfHome;

  event MLSContractCreated(uint MLSNum);

  function MLSCreate(
    uint _mlsNumber,
    string _homeAddress,
    uint _valueOfHome) onlyOwner {

    mlsNumber = _mlsNumber;
    homeAddress = _homeAddress;
    valueOfHome = _valueOfHome;

    MLSContractCreated(mlsNumber);
  }


}
