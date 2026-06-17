// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "../proxy/UUPSUpgradeable.sol";
import {IERC20} from "../interface/IERC20.sol";
import {IGateway} from "../interface/IGateway.sol";
import {GatewayLib} from "./GatewayLib.sol";
import {Settler} from "../Settler.sol";
import {UserLib, UserMap} from "../User.sol";
import {TokenLib, TokenMap} from "../Token.sol";
import {PriceOracle} from "../PriceOracle.sol";

contract Gateway is
    IGateway,
    Initializable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    uint256 public constant OFFLINE_SIGN_TIMEOUT_SECS = 30;
    uint256 public constant WITHDRAW_LOCK_PERIOD_SECS = 604800;

    UserMap.AddressToUserMap private userInfoMap;
    TokenMap.AddressToTokenMap private tokenInfoMap;

    GatewayLib.State private state;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin,
        address pauser,
        address upgrader,
        GatewayLib.State memory initState
    ) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(UPGRADER_ROLE, upgrader);

        state = initState;
    }

    function setState(
        GatewayLib.State memory newState
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        state = newState;
    }

    function setHighwayVault(
        address highwayVault
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        state.highwayVault = highwayVault;
    }

    function pause() public onlyRole(PAUSER_ROLE) nonReentrant {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) nonReentrant {
        _unpause();
    }

    function updateUserFlag(
        address userAddress,
        bool enabled,
        bool canClaim
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant returns (bool) {
        (UserLib.User storage userInfo, ) = _getOrNewUserNoCheck(userAddress);
        userInfo.enabled = enabled;
        userInfo.canClaimReward = canClaim;
        return true;
    }

    function updateUser(
        UserLib.User memory newUserState
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        UserLib.User storage currentState = UserLib.getUser(
            userInfoMap,
            newUserState.user
        );
        require(
            currentState.user == newUserState.user,
            GatewayLib.InvalidUser()
        );
        require(!currentState.enabled, GatewayLib.InvalidUser());
        require(
            currentState.claimNonce == newUserState.claimNonce,
            GatewayLib.InvalidNonce()
        );

        UserLib.updateUser(userInfoMap, newUserState);
    }

    function updateTokenList(
        TokenLib.Token memory baseToken
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        TokenLib.setToken(tokenInfoMap, baseToken);
        emit UpdateTokenList(baseToken.token);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}

    function deposit(
        IERC20 token,
        uint256 amount,
        PriceOracle.Oracle memory oracle
    ) public whenNotPaused nonReentrant {
        _deposit(token, amount, oracle, msg.sender);
    }

    function depositToHighway(
        IERC20 token,
        uint256 amount,
        PriceOracle.Oracle memory oracle
    ) public whenNotPaused nonReentrant {
        uint256 depsoitAmountInDUSD = _deposit(
            token,
            amount,
            oracle,
            state.highwayVault
        );
        emit DepositToHighway(msg.sender, token, depsoitAmountInDUSD);
    }

    function _deposit(
        IERC20 token,
        uint256 amount,
        PriceOracle.Oracle memory oracle,
        address to
    ) internal returns (uint256) {
        _getOrNewUser(msg.sender);
        TokenLib.Token storage baseToken = TokenLib.getToken(
            tokenInfoMap,
            address(token)
        );
        uint8 dusdDecimals = state.dusdToken.decimals();
        uint8 baseTokenDecimals = baseToken.token.decimals();
        if (baseTokenDecimals < dusdDecimals) {
            revert GatewayLib.InvalidTokenDecimals();
        }
        uint8 decimalsDiff = baseTokenDecimals - dusdDecimals;

        uint256 depsoitAmountInDUSD = (amount / (10 ** decimalsDiff));
        if (depsoitAmountInDUSD < 10) {
            revert GatewayLib.InputTooSmall();
        }
        uint256 depositAmount = depsoitAmountInDUSD * (10 ** decimalsDiff);

        depsoitAmountInDUSD = PriceOracle.calculateMintAmount(
            oracle,
            baseToken,
            depsoitAmountInDUSD,
            state.usdtToken,
            state.priceOracle
        );

        require(
            baseToken.token.balanceOf(msg.sender) >= depositAmount,
            GatewayLib.TokenBalance()
        );
        require(
            baseToken.token.allowance(msg.sender, address(this)) >=
                depositAmount,
            GatewayLib.TokenAllowance()
        );

        baseToken.token.transferFrom(msg.sender, state.vault, depositAmount);
        _settlerMintDusd(to, depsoitAmountInDUSD);

        emit Mint(to, depositAmount, depsoitAmountInDUSD);
        return depsoitAmountInDUSD;
    }

    function withdrawRequest(
        IERC20 targetToken,
        uint256 dusdAmount
    ) public whenNotPaused nonReentrant {
        (UserLib.User storage user, ) = _getOrNewUser(msg.sender);

        TokenLib.getToken(tokenInfoMap, address(targetToken));
        require(
            state.dusdToken.balanceOf(msg.sender) >= dusdAmount,
            GatewayLib.TokenBalance()
        );
        require(
            state.dusdToken.allowance(msg.sender, address(state.settler)) >=
                dusdAmount,
            GatewayLib.TokenAllowance()
        );

        uint256 i = 0;
        bool found = false;
        for (; i < UserLib.MAX_WITHDRAW_REQ; i++) {
            if (user.withdrawReq[i].enable) {
                continue;
            }
            user.withdrawReq[i].enable = true;
            user.withdrawReq[i].dusdAmount = dusdAmount;
            user.withdrawReq[i].targetToken = targetToken;
            user.withdrawReq[i].createdAt = block.timestamp;
            user.withdrawReq[i].unlockAt =
                block.timestamp +
                WITHDRAW_LOCK_PERIOD_SECS;
            found = true;
            break;
        }
        require(found, GatewayLib.WithdrawListFull());

        _settlerBurnDusd(msg.sender, dusdAmount);

        emit WithdrawRequest(msg.sender, dusdAmount, i);
    }

    function withdraw(
        uint256 id,
        PriceOracle.Oracle memory oracle
    ) public whenNotPaused nonReentrant {
        UserLib.User storage user = _getUser(msg.sender);

        require(id < UserLib.MAX_WITHDRAW_REQ, GatewayLib.InvalidId());
        UserLib.WithdrawReq storage withdrawReq = user.withdrawReq[id];
        require(withdrawReq.enable, GatewayLib.InvalidId());
        require(withdrawReq.unlockAt < block.timestamp, GatewayLib.Timein());
        require(
            withdrawReq.targetToken == oracle.token,
            GatewayLib.InvalidToken()
        );

        TokenLib.Token storage baseToken = TokenLib.getToken(
            tokenInfoMap,
            address(withdrawReq.targetToken)
        );
        uint8 dusdDecimals = state.dusdToken.decimals();
        uint8 baseTokenDecimals = baseToken.token.decimals();
        if (baseTokenDecimals < dusdDecimals) {
            revert GatewayLib.InvalidTokenDecimals();
        }
        uint8 decimalsDiff = baseTokenDecimals - dusdDecimals;

        uint256 withdrawAmount = PriceOracle.calculateRedeemAmount(
            oracle,
            baseToken,
            withdrawReq.dusdAmount,
            state.usdtToken,
            state.priceOracle
        );
        withdrawAmount = withdrawAmount * (10 ** decimalsDiff);
        withdrawReq.enable = false;
        require(withdrawAmount > 0, GatewayLib.InvalidAmount());

        _settlerTransferToken(baseToken.token, msg.sender, withdrawAmount);
        emit Withdraw(msg.sender, withdrawAmount, id);
    }

    function claimYield(
        GatewayLib.SignedYieldClaim memory signedClaim
    ) public whenNotPaused nonReentrant {
        bytes memory sig = signedClaim.signature;
        signedClaim.signature = bytes("");
        bytes32 msgHash = keccak256(abi.encode(signedClaim));

        require(
            SignatureChecker.isValidSignatureNow(
                state.offlineSigner,
                msgHash,
                sig
            ),
            GatewayLib.InvalidSignature()
        );
        require(signedClaim.user == msg.sender, GatewayLib.InvalidUser());
        require(
            signedClaim.chainid == block.chainid,
            GatewayLib.InvalidChainId()
        );
        (UserLib.User storage user, ) = _getOrNewUser(msg.sender);

        require(user.canClaimReward, GatewayLib.NotClaimable());
        require(
            signedClaim.nonce == user.claimNonce + signedClaim.batch &&
                signedClaim.batch > 0,
            GatewayLib.InvalidNonce()
        );
        require(
            block.timestamp < signedClaim.timestamp + OFFLINE_SIGN_TIMEOUT_SECS,
            GatewayLib.Timeout()
        );

        _settlerMintDusd(signedClaim.user, signedClaim.amount);

        user.claimNonce += signedClaim.batch;
        user.lastClaimedAt = block.timestamp;

        emit ClaimYield(signedClaim.user, signedClaim.amount);
    }

    function getUserInfo(
        address userAddress
    ) public view returns (UserLib.User memory) {
        return UserLib.getUser(userInfoMap, userAddress);
    }

    function getState() public view returns (GatewayLib.State memory) {
        return state;
    }

    function getTokenList() public view returns (TokenLib.Token[] memory) {
        address[] memory tokens = TokenMap.keys(tokenInfoMap);
        TokenLib.Token[] memory tokenList = new TokenLib.Token[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            tokenList[i] = TokenLib.getToken(tokenInfoMap, tokens[i]);
        }
        return tokenList;
    }

    function getToken(
        address token
    ) public view returns (TokenLib.Token memory) {
        return TokenLib.getToken(tokenInfoMap, token);
    }

    function _settlerMintDusd(address user, uint256 amount) private {
        state.settler.mintDusd(user, amount);
    }

    function _settlerBurnDusd(address user, uint256 amount) private {
        state.settler.burnDusd(user, amount);
    }

    function _settlerTransferToken(
        IERC20 token,
        address user,
        uint256 amount
    ) private {
        state.settler.transferToken(token, user, amount);
    }

    function _increaseUserCnt() internal returns (uint256) {
        state.userCnt += 1;
        return state.userCnt;
    }

    function _getUser(
        address userAddress
    ) internal view returns (UserLib.User storage) {
        UserLib.User storage user = UserLib.getUser(userInfoMap, userAddress);
        require(
            user.user == msg.sender && msg.sender != address(0),
            GatewayLib.InvalidUser()
        );
        require(user.enabled, GatewayLib.UserDisabled());
        return user;
    }

    function _getOrNewUser(
        address userAddress
    ) internal returns (UserLib.User storage, bool) {
        (UserLib.User storage user, bool isNew) = _getOrNewUserNoCheck(
            userAddress
        );
        require(
            user.user == msg.sender && msg.sender != address(0),
            GatewayLib.InvalidUser()
        );
        require(user.enabled, GatewayLib.UserDisabled());
        return (user, isNew);
    }

    function _getOrNewUserNoCheck(
        address userAddress
    ) internal returns (UserLib.User storage, bool) {
        bool isNew = false;
        if (!UserLib.contains(userInfoMap, userAddress)) {
            uint256 uid = _increaseUserCnt();
            UserLib.set(
                userInfoMap,
                userAddress,
                UserLib.initUser(userAddress, uid)
            );
            isNew = true;
        }
        UserLib.User storage user = UserLib.getUser(userInfoMap, userAddress);
        return (user, isNew);
    }
}
