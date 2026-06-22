// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract StabilityPoolW is Ownable, ReentrancyGuard {
    struct StabilityPool {
        uint256 arth;
        uint256 maha;
        uint256 eth;
    }

    IERC20 public arth;
    IERC20 public maha;

    /// @dev Mapping from owner address to mapping of operator addresses.
    mapping(address => StabilityPool) public pools;

    constructor(
        address _arth,
        address _maha,
        address[] memory who,
        StabilityPool[] memory _pools
    ) {
        arth = IERC20(_arth);
        maha = IERC20(_maha);
        for (uint256 i = 0; i < who.length; i++) {
            pools[who[i]] = _pools[i];
        }
    }

    function setTrove(StabilityPool memory t, address who) external onlyOwner {
        pools[who] = t;
    }

    function withdraw() public nonReentrant {
        require(pools[msg.sender].arth > 0, "invalid user");
        arth.transfer(msg.sender, pools[msg.sender].arth);
        maha.transfer(msg.sender, pools[msg.sender].maha);
        payable(msg.sender).transfer(pools[msg.sender].eth);
        delete pools[msg.sender];
    }

    function refundETH() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    function refundERC20(IERC20 token) public onlyOwner {
        token.transfer(msg.sender, token.balanceOf(address(this)));
    }
}
