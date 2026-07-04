// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./OnchainExecutor.sol";
import '@openzeppelin/contracts/access/Ownable.sol';

/**
 * @title OnchainSwapV3
 * @notice During the `onswap` transaction `OnchainSwapV3` sends user's tokens
 * to `OnchainExecutor` contract which then operates with them.
 */
contract OnchainSwapV3 is Context, Ownable{

    uint256 public fee = 0.05 ether;

    event ClaimedTokens(address to, uint256 balance);
    event OnchainSwap(address token, uint256 amount, uint256 fee);

    OnchainExecutor public onchainExecutor;

    constructor() {
        onchainExecutor = new OnchainExecutor();
    }

    modifier hasFee() {
        require(msg.value >= fee);
        _;
    }

    function onswap(
        address token,
        uint256 amount,
        address dex,
        address dexgateway,
        bytes memory calldata_
    ) external payable hasFee {

        if(token != address(0)) {
            SafeERC20.safeTransferFrom(
                IERC20(token),
                _msgSender(),
                address(onchainExecutor),
                amount
            );
        }

        onchainExecutor.onswap{value: msg.value - fee}(
            token,
            amount,
            dex,
            dexgateway,
            calldata_
        );

        emit OnchainSwap(token, amount, fee);
    }

    function changeFee(uint256 _newFee) public onlyOwner {
        fee = _newFee;
    }

    function claimTokens(address _to) public onlyOwner {
        uint256 balance = address(this).balance;
        (bool sent, ) = _to.call{value: balance}("");
        require(sent, "Failed to send Ether");
        emit ClaimedTokens(_to, balance);
    }
}
