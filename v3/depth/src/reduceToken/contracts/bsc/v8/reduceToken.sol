pragma solidity ^0.8.0;

import "./openzeppelin/contracts/token/ERC20/ERC20.sol";

contract reduceToken is ERC20 {
    uint256 supply = 0;
    constructor (string memory _name,string memory _symbol,address _owner,uint256 _supply) ERC20(
        _name,
        _symbol
    ) {
        if (_supply>0){
            supply = _supply;
            _mint(_owner, _supply);
        }
    }
    function decimals() public view override returns (uint8) {
        return 1;
    }
    function totalSupply() public view override  returns (uint256) {
        return supply;
    }

}
