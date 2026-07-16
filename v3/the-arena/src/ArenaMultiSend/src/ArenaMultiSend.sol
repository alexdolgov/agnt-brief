// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract ArenaMultiSend is Ownable {
    using SafeERC20 for IERC20;

    address public feeWallet;
    uint256 public feePercentage;

    event MultiSend(address from, uint256 total);
    event MultiTransferERC20(address token, address from, uint256 total);
    event FeeUpdated(uint256 oldFeePercentage, uint256 newFeePercentage);
    event FeeWalletUpdated(address oldFeeWallet, address newFeeWallet);

    constructor(
        address _feeWallet,
        uint256 _feePercentage
    ) Ownable(msg.sender) {
        require(
            _feeWallet != address(0),
            "ArenaMultiSend: Fee wallet address cannot be the zero address"
        );
        require(
            _feePercentage < 10,
            "ArenaMultiSend: Fee percentage must be less than 10%"
        );
        feeWallet = _feeWallet;
        feePercentage = _feePercentage;
    }

    function multiSend(
        address payable[] calldata _receivers,
        uint256[] calldata _amounts
    ) external payable {
        require(
            _receivers.length == _amounts.length,
            "ArenaMultiSend: Input length mismatch"
        );

        uint256 totalToSend = 0;
        for (uint256 i = 0; i < _amounts.length; i++) {
            require(
                _receivers[i] != msg.sender,
                "ArenaMultiSend: Can't tip yourself"
            );
            require(
                _receivers[i] != address(0),
                "ArenaMultiSend: Address should be valid"
            );

            totalToSend += _amounts[i];
        }
        uint256 fee = (totalToSend * feePercentage) / (100 - feePercentage);

        require(
            msg.value >= (totalToSend + fee),
            "ArenaMultiSend: Pass enough value to multiSend"
        );

        (bool feeSuccess, ) = feeWallet.call{value: fee}("");
        require(feeSuccess, "ArenaMultiSend: Failed to transfer fee");

        for (uint256 i = 0; i < _receivers.length; i++) {
            (bool success, ) = _receivers[i].call{value: _amounts[i]}("");
            require(success, "ArenaMultiSend: Failed to send");
        }

        emit MultiSend(msg.sender, totalToSend + fee);
    }

    function multiTransferERC20(
        address _token,
        address payable[] calldata _receivers,
        uint256[] calldata _amounts
    ) external {
        require(
            _receivers.length == _amounts.length,
            "ArenaMultiSend: Input length mismatch"
        );
        IERC20 token = IERC20(_token);

        uint256 totalToSend = 0;
        uint256 userBalance = token.balanceOf(msg.sender);

        for (uint256 i = 0; i < _amounts.length; i++) {
            require(
                _receivers[i] != address(0),
                "ArenaMultiSend: Address should be valid"
            );

            totalToSend += _amounts[i];
        }

        uint256 fee = (totalToSend * feePercentage) / (100 - feePercentage);
        require(
            totalToSend + fee <= userBalance,
            "ArenaMultiSend: Insufficient token balance"
        );

        uint256 userAllowance = token.allowance(msg.sender, address(this));
        require(
            (totalToSend + fee) <= userAllowance,
            "ArenaMultiSend: Insufficient token allowance"
        );

        token.safeTransferFrom(msg.sender, feeWallet, fee);
        for (uint256 i; i < _receivers.length; i++) {
            token.safeTransferFrom(msg.sender, _receivers[i], _amounts[i]);
        }

        emit MultiTransferERC20(_token, msg.sender, totalToSend + fee);
    }

    function withdraw(uint256 _amount) external onlyOwner {
        (bool success, ) = payable(owner()).call{value: _amount}("");
        require(success, "ArenaMultiSend: Transfer failed!");
    }

    function withdrawToken(
        address _tokenContract,
        uint256 _amount
    ) external onlyOwner {
        IERC20 tokenContract = IERC20(_tokenContract);
        tokenContract.transfer(msg.sender, _amount);
    }

    function setFeeWallet(address _feeWallet) external onlyOwner {
        require(_feeWallet != address(0), "ArenaMultiSend: Invalid fee wallet");
        address _tmpFeeWallet = feeWallet;
        feeWallet = _feeWallet;
        emit FeeWalletUpdated(_tmpFeeWallet, _feeWallet);
    }

    function setFeePercentage(uint256 _feePercentage) external onlyOwner {
        require(
            _feePercentage < 10,
            "ArenaMultiSend: Fee percentage must be less than 10%"
        );
        uint256 _tmpFee = feePercentage;
        feePercentage = _feePercentage;

        emit FeeUpdated(_tmpFee, _feePercentage);
    }
}
