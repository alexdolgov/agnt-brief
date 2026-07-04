// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract LiveTheChefRewardSeeder is OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;

    string public __NAME__;
    address public liveTheChef;
    address public liveThe;

    constructor() public {}

    function initialize(string memory _name, address _liveThe) public initializer {
        __Ownable_init();
        __NAME__ = _name;
        liveThe = _liveThe;
    }

    modifier onlyChef() {
        require(msg.sender == liveTheChef, "!auth");
        _;
    }

    function setLiveTheChef(address _liveTheChef) external onlyOwner {
        liveTheChef = _liveTheChef;
    }

    function claim(uint256 _pending, address _to) external onlyChef {
        require(IERC20(liveThe).balanceOf(address(this)) >= _pending, "Amount exceeds balance");
        IERC20(liveThe).safeTransfer(_to, _pending);
    }
}
