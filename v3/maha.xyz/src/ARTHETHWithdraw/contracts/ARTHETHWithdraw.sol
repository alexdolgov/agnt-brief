// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract ARTHETHWithdraw is Ownable, ReentrancyGuard {
    struct Trove {
        uint256 arth;
        uint256 eth;
    }

    IERC20 public arth;

    /// @dev Mapping from owner address to mapping of operator addresses.
    mapping(address => Trove) public troves;

    constructor(
        address _arth,
        address[] memory who,
        Trove[] memory _troves
    ) {
        arth = IERC20(_arth);
        for (uint256 i = 0; i < who.length; i++) {
            troves[who[i]] = _troves[i];
        }
    }

    function setTrove(Trove memory t, address who) external onlyOwner {
        troves[who] = t;
    }

    function setTroves(Trove[] memory t, address[] memory who)
        external
        onlyOwner
    {
        for (uint256 i = 0; i < who.length; i++) {
            troves[who[i]] = t[i];
        }
    }

    function withdraw() public nonReentrant {
        require(troves[msg.sender].arth > 0, "invalid user");
        arth.transferFrom(msg.sender, address(this), troves[msg.sender].arth);
        payable(msg.sender).transfer(troves[msg.sender].eth);
        delete troves[msg.sender];
    }

    function refundETH() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    function refundERC20(IERC20 token) public onlyOwner {
        token.transfer(msg.sender, token.balanceOf(address(this)));
    }
}
