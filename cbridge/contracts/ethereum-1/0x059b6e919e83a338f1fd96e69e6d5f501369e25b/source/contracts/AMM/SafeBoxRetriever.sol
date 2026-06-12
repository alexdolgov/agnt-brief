pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "../utils/Owned.sol";

contract SafeBoxRetriever is Owned {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    constructor(address _owner) Owned(_owner) {}

    function retrieveTokens(address token, uint amount) external onlyOwner {
        IERC20Upgradeable(token).transfer(msg.sender, amount);
    }
}
