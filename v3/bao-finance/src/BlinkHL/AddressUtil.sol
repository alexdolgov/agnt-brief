pragma solidity ^0.4.23;

import "./SafeMath.sol";

interface IBEP20 {
    function approve(address _spender, uint256 _value) external returns (bool);
    function balanceOf(address _from) external view returns(uint256);
    function transfer(address _to, uint256 _value) external returns(bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns(bool);
    function burn(uint256 _value) external returns (bool);
}

library AddressUtil {
    using SafeMath for uint256;

    event TransferBnb(address indexed _to, uint256 _amount);
    event TransferBEP20(address indexed _to, address indexed _token, uint256 _value);


    function isContract(address _addr) internal view returns(bool) {
        uint32 size;
        assembly {
            size := extcodesize(_addr)
        }
        return (size > 0);
    }

    function transferBnb(address _addr, uint256 value) internal {
        if (value > 0){
            _addr.transfer(value);
            emit TransferBnb(_addr, value);
        }
    }

    function transferBep20(address _addr, address tokenAddr, uint256 value) internal {
        require(tokenAddr != address(0), "addr is 0");
        if (value > 0){
            IBEP20(tokenAddr).transfer(_addr, value);
            emit TransferBEP20(_addr, tokenAddr, value);
        }
    }

    function transferToken(address _addr, address tokenAddr, uint256 value) internal{
        if(tokenAddr==address(0)) {
            transferBnb(_addr,value);
        }else{
            transferBep20(_addr,tokenAddr,value);
        }
    }

    function transferAll(address _addr, address[] memory tokenAddrs, uint256[] memory _tokenValues) internal {
        require(_addr != address(0), "_addr is 0");
        uint256 len = _tokenValues.length;
        uint256 tokenValue;
        address tokenAddr;
        for (uint256 i = 0; i < len; i += 1){
            tokenValue= _tokenValues[i];
            tokenAddr = tokenAddrs[i];
            transferToken(_addr, tokenAddr, tokenValue);
        }
    }

    function getAllBalance(address _addr,address[] memory addrs) internal view
    returns(uint256[] memory)
    {
        uint256 bnbValue=_addr.balance;
        uint256 len = addrs.length;
        uint256[] memory tokenValues = new uint[](len);
        tokenValues[0]=bnbValue;
        for (uint256 i = 1; i < len; i += 1 ){
            IBEP20 token = IBEP20(addrs[i]);
            uint256 value = token.balanceOf(_addr);
            tokenValues[i] = value;
        }
        return tokenValues;
    }
}
