// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IRouter} from "./interfaces/IRouter.sol";
import {IDepositManager} from "./interfaces/IDepositManager.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

contract DepositManager is
    IDepositManager,
    Initializable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessControlUpgradeable
{
    IRouter public router;

    address[] public acceptTokens;

    mapping(address => AcceptTokenInfo) public acceptTokenInfos;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function initialize(address router_) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();

        require(router_ != address(0), "zero router");
        router = IRouter(router_);
    }

    // register token
    function registerToken(
        address token,
        uint256 minDepositAmount,
        address tokenReceiver,
        address feeReceiver,
        uint256 fee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(minDepositAmount > 0, "zero minDepositAmount");
        require(
            tokenReceiver != address(0) && feeReceiver != address(0),
            "receiver zero address"
        );

        // token hasn't been registered
        require(!acceptTokenInfos[token].registered, "token registered");

        acceptTokens.push(token);

        acceptTokenInfos[token] = AcceptTokenInfo({
            token: token,
            minDepositAmount: minDepositAmount,
            depositPaused: true,
            tokenReceiver: tokenReceiver,
            feeReceiver: feeReceiver,
            fee: fee,
            registered: true
        });
    }

    // function update token status
    function updateTokenStatus(
        address token,
        uint minDepositAmount,
        bool depositPaused,
        address tokenReceiver,
        address feeReceiver,
        uint fee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(acceptTokenInfos[token].registered, "token not registered");

        acceptTokenInfos[token].minDepositAmount = minDepositAmount;
        acceptTokenInfos[token].depositPaused = depositPaused;

        // receiver should not be zero
        require(
            tokenReceiver != address(0) && feeReceiver != address(0),
            "zero receiver"
        );

        acceptTokenInfos[token].tokenReceiver = tokenReceiver;
        acceptTokenInfos[token].feeReceiver = feeReceiver;

        acceptTokenInfos[token].fee = fee;

        emit UpdateTokenStatus(
            token,
            minDepositAmount,
            depositPaused,
            tokenReceiver,
            feeReceiver,
            fee
        );
    }

    // function deposit
    function deposit(
        address token,
        uint256 amount,
        address refundReceiver
    ) public payable whenNotPaused nonReentrant {
        require(acceptTokenInfos[token].registered, "token not registered");
        require(!acceptTokenInfos[token].depositPaused, "token deposit paused");
        require(
            amount >= acceptTokenInfos[token].minDepositAmount,
            "amount less than minDepositAmount"
        );

        uint remainMsgValue = msg.value;
        remainMsgValue = _receiveToken(
            token,
            amount,
            acceptTokenInfos[token].tokenReceiver,
            remainMsgValue
        );

        // send fee
        if (acceptTokenInfos[token].fee > 0) {
            remainMsgValue = _sendFee(
                acceptTokenInfos[token].fee,
                remainMsgValue,
                acceptTokenInfos[token].feeReceiver
            );
        }

        // refund
        if (remainMsgValue > 0) {
            // require refundReceiver not zero address
            require(refundReceiver != address(0), "zero refundReceiver");
            Address.sendValue(payable(refundReceiver), remainMsgValue);
            emit Refund(refundReceiver, remainMsgValue);
        }

        // emit stake event
        emit Deposit(msg.sender, token, amount);
    }

    // receive token
    function _receiveToken(
        address token,
        uint256 amount,
        address tokenReceiver,
        uint256 remainMsgValue
    ) internal returns (uint256) {
        if (token == address(0)) {
            require(
                remainMsgValue >= amount,
                "msgValue less than deposit amount"
            );
            // send
            Address.sendValue(payable(tokenReceiver), amount);
            return remainMsgValue - amount;
        } else {
            // transfer token
            router.pluginTransferERC20(
                token,
                msg.sender,
                tokenReceiver,
                amount
            );
            return remainMsgValue;
        }
    }

    // function send fee
    function _sendFee(
        uint256 feeAmount,
        uint remainMsgValue,
        address feeReceiver
    ) internal returns (uint) {
        require(feeAmount > 0, "zero amount");

        require(remainMsgValue >= feeAmount, "msgValue cant cover fee");
        Address.sendValue(payable(feeReceiver), feeAmount);
        return remainMsgValue - feeAmount;
    }

    // get all accept tokens information
    function getAllAcceptTokens()
        public
        view
        returns (TokenInfoDetail[] memory)
    {
        TokenInfoDetail[] memory tokens = new TokenInfoDetail[](
            acceptTokens.length
        );

        for (uint256 i = 0; i < acceptTokens.length; ++i) {
            address tokenAddr = acceptTokens[i];
            bool isNative = tokenAddr == address(0);
            tokens[i] = TokenInfoDetail({
                token: tokenAddr,
                decimals: isNative
                    ? 18
                    : ERC20Upgradeable(acceptTokens[i]).decimals(),
                depositPaused: acceptTokenInfos[acceptTokens[i]].depositPaused,
                minDepositAmount: acceptTokenInfos[acceptTokens[i]]
                    .minDepositAmount,
                fee: acceptTokenInfos[acceptTokens[i]].fee,
                name: isNative ? "" : ERC20Upgradeable(acceptTokens[i]).name(),
                symbol: isNative
                    ? ""
                    : ERC20Upgradeable(acceptTokens[i]).symbol()
            });
        }

        return tokens;
    }

    // batch set token deposit status
    function batchSetTokenDepositStatus(
        address[] memory tokens,
        bool[] memory statuses
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(tokens.length == statuses.length, "length not match");

        for (uint256 i = 0; i < tokens.length; ++i) {
            require(
                acceptTokenInfos[tokens[i]].registered,
                "token not registered"
            );
            acceptTokenInfos[tokens[i]].depositPaused = statuses[i];
        }
    }
}
