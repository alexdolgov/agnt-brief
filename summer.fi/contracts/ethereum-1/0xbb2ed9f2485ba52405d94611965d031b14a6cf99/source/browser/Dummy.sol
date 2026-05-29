pragma solidity 0.7.5;

contract Dummy {


  // reserve requirement
  function approve(address , uint256 ) external pure returns (bool){
    return true;
  }
  // reserve requirement
  function transfer(address , uint256 ) external pure returns (bool){
    return true;
  }
  // cBorrowToken requirement
  function repayBorrowBehalf(address , uint256 ) external pure returns (uint256){
    return 0;
  }
  // proxy requirement
  function execute(address , bytes memory ) public payable returns (bytes32){
    return bytes32(0);
  }
}