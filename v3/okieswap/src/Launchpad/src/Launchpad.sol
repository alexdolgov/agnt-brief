// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { AccessControl } from '@openzeppelin/contracts/access/AccessControl.sol';
import { Strings } from '@openzeppelin/contracts/utils/Strings.sol';
import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { TokenFactory } from './TokenFactory.sol';
import { ITokenFactory } from './interfaces/ITokenFactory.sol';
import { ILaunchpad } from './interfaces/ILaunchpad.sol';
import { IDataVault } from './interfaces/IDataVault.sol';

contract Launchpad is AccessControl, ILaunchpad {
    using Strings for address;

    IDataVault public immutable dataVault;

    bytes32 public constant OPERATOR_ROLE = keccak256('OPERATOR_ROLE');

    event TokenFactoryCreated(address indexed factory, address fundToken, uint256 fundingTarget, address bondingCurve);
    event TokenLaunched(
        address indexed tokenFactory,
        address indexed tokenAddress,
        address creator,
        uint256 initialBuyAmount,
        string name,
        string symbol,
        string description,
        string imageUri,
        string telegramLink,
        string twitterLink,
        string websiteLink,
        string data
    );

    constructor(address _dataVault) {
        dataVault = IDataVault(_dataVault);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, msg.sender);
    }

    function createTokenFactory(
        address implementation,
        uint256 feePercent,
        address routerV2,
        address factoryV2,
        address bondingCurve,
        address fundToken,
        uint256 fundingTarget
    ) external onlyRole(OPERATOR_ROLE) returns (address) {
        TokenFactory factory = new TokenFactory(
            implementation,
            msg.sender,
            feePercent,
            routerV2,
            factoryV2,
            bondingCurve,
            fundToken,
            fundingTarget
        );

        emit TokenFactoryCreated(address(factory), fundToken, fundingTarget, bondingCurve);

        return address(factory);
    }

    function _getKey(address token, string memory key) internal pure returns (string memory) {
        return string.concat(token.toHexString(), ':', key);
    }

    function launch(
        address tokenFactory,
        uint256 initialBuyAmount,
        address creator,
        string memory name,
        string memory symbol,
        string memory description,
        string memory imageUri,
        MetadataParams memory metadataParams
    ) external payable returns (address tokenAddress) {
        ITokenFactory factory = ITokenFactory(tokenFactory);
        address fundToken = factory.fundToken();
        if (initialBuyAmount > 0) {
            if (fundToken == address(0)) {
                if (msg.value < initialBuyAmount) revert InvalidAmount();
            } else {
                IERC20(fundToken).transferFrom(msg.sender, address(this), initialBuyAmount);
                IERC20(fundToken).approve(tokenFactory, initialBuyAmount);
            }
        }

        tokenAddress = ITokenFactory(tokenFactory).createToken{ value: fundToken == address(0) ? initialBuyAmount : 0 }(
            name,
            symbol,
            creator,
            initialBuyAmount
        );

        dataVault.setAddress(_getKey(tokenAddress, 'creator'), creator);
        dataVault.setString(_getKey(tokenAddress, 'name'), name);
        dataVault.setString(_getKey(tokenAddress, 'symbol'), symbol);
        dataVault.setString(_getKey(tokenAddress, 'description'), description);
        dataVault.setString(_getKey(tokenAddress, 'imageUri'), imageUri);
        dataVault.setString(_getKey(tokenAddress, 'telegramLink'), metadataParams.telegramLink);
        dataVault.setString(_getKey(tokenAddress, 'twitterLink'), metadataParams.twitterLink);
        dataVault.setString(_getKey(tokenAddress, 'websiteLink'), metadataParams.websiteLink);
        dataVault.setString(_getKey(tokenAddress, 'data'), metadataParams.data);

        emit TokenLaunched(
            tokenFactory,
            tokenAddress,
            creator,
            initialBuyAmount,
            name,
            symbol,
            description,
            imageUri,
            metadataParams.telegramLink,
            metadataParams.twitterLink,
            metadataParams.websiteLink,
            metadataParams.data
        );
    }
}
