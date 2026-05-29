// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.7.6;
pragma abicoder v2;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IMultiTokenFeeSplitter } from "./interfaces/IMultiTokenFeeSplitter.sol";
import { IMultiTokenFeeSplitterFactory } from "./interfaces/IMultiTokenFeeSplitterFactory.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract MultiTokenFeeSplitter is IMultiTokenFeeSplitter, Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public override immutable feeSplitterFactory;

    uint256 private constant _100_PERCENT = 10000;

    address[] private _registeredTokens;
    mapping(address => bool) private _tokensMap;
    address[] private _recipients;
    uint256[] private _ratios;

    constructor(address[] memory initialRecipients, uint256[] memory initialRatios) {
        require(initialRecipients.length == initialRatios.length, "Mismatch between recipients and ratios");
        feeSplitterFactory = msg.sender;
        updateRecipientAddresses(initialRecipients);
        updateRatios(initialRatios);
    }

    function tokensCount() external view override returns (uint256) {
        return _registeredTokens.length;
    }

    function registeredTokens() external view override returns (address[] memory) {
        return _registeredTokens;
    }

    function recipients() external view override returns (address[] memory) {
        return _recipients;
    }

    function ratios() external view override returns (uint256[] memory) {
        return _ratios;
    }

    function distributeAllFees() external override {
        distributeFees(0, _registeredTokens.length);
    }

    function distributeFees(uint256 _page, uint256 _pageSize) public override nonReentrant {
        require(_ratios.length == _recipients.length, "Mismatch between recipients and ratios");

        uint256 start = _page * _pageSize;
        uint256 end = start.add(_pageSize);

        require(start < _registeredTokens.length, "Page out of bounds");

        if (end > _registeredTokens.length) {
            end = _registeredTokens.length;
        }

        for (uint256 i = start; i < end; i++) {
            IERC20 token = IERC20(_registeredTokens[i]);
            uint256 balance = token.balanceOf(address(this));
            if (balance == 0) {
                continue;  // Skip this token if there's nothing to distribute
            }

            uint256 remainingBalance = balance;

            FeeReceived[] memory feeRecipients = new FeeReceived[](_recipients.length);
            for (uint256 j = 0; j < _recipients.length; j++) {
                if (j == _recipients.length - 1) {
                    // Last recipient gets the remaining balance
                    token.safeTransfer(_recipients[j], remainingBalance);
                    feeRecipients[j] = FeeReceived(_recipients[j], remainingBalance);
                    break;
                }
                uint256 amount = balance.mul(_ratios[j]).div(_100_PERCENT);
                token.safeTransfer(_recipients[j], amount);
                remainingBalance = remainingBalance.sub(amount);
                feeRecipients[j] = FeeReceived(_recipients[j], amount);
            }
            emit FeeDistributed(msg.sender, address(token), feeRecipients);
        }
    }

    function registerToken(address _token) external override onlyOwner {
        require(_token != address(0), "Invalid token address");
        require(!_tokensMap[_token], "Token already registered");

        _registeredTokens.push(_token);
        _tokensMap[_token] = true;
        emit TokenRegistered(_token);
    }

    function unregisterToken(address _token) external override onlyOwner {
        require(_token != address(0), "Invalid token address");
        require(_tokensMap[_token], "Token not registered");

        for (uint256 i = 0; i < _registeredTokens.length; i++) {
            if (_registeredTokens[i] == _token) {
                _registeredTokens[i] = _registeredTokens[_registeredTokens.length - 1];
                _registeredTokens.pop();
                delete _tokensMap[_token];
                emit TokenUnregistered(_token);
                return;
            }
        }
    }

    function updateRecipientAddresses(address[] memory newRecipients) public override onlyOwner {
        // Check that none of the addresses is address(0)
        for (uint256 i = 0; i < newRecipients.length; i++) {
            require(newRecipients[i] != address(0), "Recipient address cannot be the zero address");
        }

        emit RecipientsUpdated(_recipients, newRecipients);
        _recipients = newRecipients;
    }

    function updateRatios(uint256[] memory newRatios) public override onlyOwner {
        uint256 totalRatio = 0;
        for (uint256 i = 0; i < newRatios.length; i++) {
            totalRatio = totalRatio.add(newRatios[i]);
        }
        require(totalRatio == _100_PERCENT || newRatios.length == 0, "Total ratios must sum up to 100%");

        emit RatiosUpdated(_ratios, newRatios);
        _ratios = newRatios;
    }

    function sweepExtraTokens(address _token, address _recipient) external override onlyOwner nonReentrant {
        require(_token != address(0), "Invalid token address");
        require(_recipient != address(0), "Invalid recipient address");
        require(!_tokensMap[_token], "Can't sweep registered tokens");

        IERC20 token = IERC20(_token);
        uint256 tokenBalance = token.balanceOf(address(this));
        require(tokenBalance > 0, "Nothing to sweep");
        require(token.transfer(_recipient, tokenBalance), "Transfer to Recipient failed");

        emit SweepExtraTokens(msg.sender, _token, _recipient, tokenBalance);
    }
}
