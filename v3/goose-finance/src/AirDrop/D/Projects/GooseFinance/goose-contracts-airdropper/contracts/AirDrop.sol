// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract AirDrop is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct DropData{
        address account;
        uint256 amount;
    }

    struct DropHistory{
        uint256 amount;
        uint256 block;
    }

    IERC20 public immutable token;
    mapping(address => DropHistory[]) public drops;

    event Drop(address indexed account, uint256 amount);

    constructor(address _tokenAddress) public{
        token = IERC20(_tokenAddress);
    }

    function airdrop(DropData[] calldata dropData) external onlyOwner {
        uint256 length = dropData.length;
        for (uint256 i = 0; i < length; i++) {
            DropData calldata d = dropData[i];
            drops[d.account].push(DropHistory(d.amount, block.number));
            token.safeTransfer(d.account, d.amount);

            emit Drop(d.account, d.amount);
        }
    }
}
