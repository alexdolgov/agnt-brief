// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../utils/Ownable.sol';

contract OracleRouter is Ownable {

    string  public symbol;
    address public oracle;

    constructor (string memory _symbol, address _oracle) {
        symbol = _symbol;
        oracle = _oracle;
        _controller = msg.sender;
    }

    function setOracle(address _oracle) external _controller_ {
        oracle = _oracle;
    }

    function getPrice() external view returns (uint256) {
        return IOracle(oracle).getPrice();
    }

}

interface IOracle {
    function getPrice() external view returns (uint256);
}
