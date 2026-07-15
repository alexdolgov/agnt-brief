// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IRouter} from "./interfaces/IRouter.sol";
import {IDepositManagerV2} from "./interfaces/IDepositManagerV2.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IMToken} from "./interfaces/IMToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract DepositManagerV2 is
    IDepositManagerV2,
    Initializable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessControlUpgradeable
{
    using SafeERC20 for IERC20;

    // Base value for rewardMultiplier
    uint256 public constant BASE = 1e18;

    IRouter public router;

    address[] public acceptTokens;

    mapping(address => AcceptTokenInfo) public acceptTokenInfos;

    bytes32 public constant CONVERSION_RATE_UPDATE_ROLE =
        keccak256("CONVERSION_RATE_UPDATE_ROLE");

    bytes32 public constant STAKETOKEN_WITHDRAW_ROLE =
        keccak256("STAKETOKEN_WITHDRAW_ROLE");

    bytes32 public constant FINALIZE_WITHDRAW_ROLE =
        keccak256("FINALIZE_WITHDRAW_ROLE");

    mapping(address stakeToken => StakeInfo[] stakeInfos)
        public stakeTokenStakeInfos;

    mapping(address stakeToken => WithdrawCheckpoint[] withdrawCheckpoints)
        public stakeTokenWithdrawCheckpoints;

    mapping(address stakeToken => uint[] waitForCancelCheckpointIndexs)
        public toFinalizeCheckpointIndexs;

    mapping(address stakeToken => uint nextWithdrawIndex)
        public stakeTokenNextToWithdrawStakeIndex;

    mapping(address stakeToken => uint)
        public accumulatedEquivalentTokenAmounts;

    mapping(address stakeToken => uint) public cancelledEquivalentTokenAmounts;

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
        address mToken,
        address stakeToken,
        uint256 minDepositAmount,
        address feeReceiver,
        uint256 fee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // mToken not zero
        require(mToken != address(0), "zero mToken");

        // token hasn't been registered
        require(!acceptTokenInfos[stakeToken].registered, "token registered");

        require(minDepositAmount > 0, "zero minDepositAmount");

        acceptTokens.push(stakeToken);

        uint8 mTokenDecimal = ERC20Upgradeable(mToken).decimals();
        uint8 stakeTokenDecimal = stakeToken == address(0)
            ? 18
            : ERC20Upgradeable(stakeToken).decimals();

        // require stakeToken decimals smaller than mToken decimals
        require(
            stakeTokenDecimal <= mTokenDecimal,
            "stakeToken decimals larger than mToken"
        );

        // fee receiver should not be zero
        require(feeReceiver != address(0), "zero feeReceiver");

        acceptTokenInfos[stakeToken] = AcceptTokenInfo({
            mToken: mToken,
            stakeToken: stakeToken,
            minDepositAmount: minDepositAmount,
            depositPaused: true,
            feeReceiver: feeReceiver,
            fee: fee,
            conversionRate: 0,
            mTokenDecimals: mTokenDecimal,
            stakeTokenDecimals: stakeTokenDecimal,
            registered: true
        });
    }

    // function update token status
    function updateTokenStatus(
        address stakeToken,
        uint minDepositAmount,
        bool depositPaused,
        address feeReceiver,
        uint fee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            acceptTokenInfos[stakeToken].registered,
            "token not registered"
        );

        acceptTokenInfos[stakeToken].minDepositAmount = minDepositAmount;
        acceptTokenInfos[stakeToken].depositPaused = depositPaused;

        // receiver should not be zero
        require(feeReceiver != address(0), "zero receiver");

        acceptTokenInfos[stakeToken].feeReceiver = feeReceiver;

        acceptTokenInfos[stakeToken].fee = fee;

        emit UpdateTokenStatus(
            stakeToken,
            minDepositAmount,
            depositPaused,
            feeReceiver,
            fee
        );
    }

    // function deposit
    function deposit(
        address stakeToken,
        uint256 amount,
        address refundReceiver
    ) public payable whenNotPaused nonReentrant {
        require(
            acceptTokenInfos[stakeToken].registered,
            "token not registered"
        );
        require(
            !acceptTokenInfos[stakeToken].depositPaused,
            "token deposit paused"
        );
        require(
            amount >= acceptTokenInfos[stakeToken].minDepositAmount,
            "amount less than minDepositAmount"
        );

        uint remainMsgValue = msg.value;
        remainMsgValue = _receiveToken(stakeToken, amount, remainMsgValue);

        // send fee
        if (acceptTokenInfos[stakeToken].fee > 0) {
            remainMsgValue = _sendFee(
                acceptTokenInfos[stakeToken].fee,
                remainMsgValue,
                acceptTokenInfos[stakeToken].feeReceiver
            );
        }

        // mint mToken
        (uint equivalentAssetAmount, uint shareAmount) = _mintMToken(
            stakeToken,
            amount,
            msg.sender
        );

        _updateStakeTokenInfos(
            stakeToken,
            amount,
            shareAmount,
            equivalentAssetAmount
        );

        // refund
        if (remainMsgValue > 0) {
            // require refundReceiver not zero address
            require(refundReceiver != address(0), "zero refundReceiver");
            Address.sendValue(payable(refundReceiver), remainMsgValue);
            emit Refund(refundReceiver, remainMsgValue);
        }

        // emit stake event
        emit Deposit(msg.sender, stakeToken, amount, shareAmount);
    }

    // update stakeToken infos
    function _updateStakeTokenInfos(
        address stakeToken,
        uint256 stakeAmount,
        uint256 shareAmount,
        uint256 equivalentAssetAmount
    ) internal {
        // get last stakeInfo
        uint256 stakeInfoLength = stakeTokenStakeInfos[stakeToken].length;

        StakeInfo memory lastStakeInfo;

        if (stakeInfoLength > 0) {
            lastStakeInfo = stakeTokenStakeInfos[stakeToken][
                stakeInfoLength - 1
            ];
        } else {
            lastStakeInfo = StakeInfo({
                amount: 0,
                shareAmount: 0,
                accumulatedStakeTokenAmount: 0,
                accumulatedShareAmount: 0,
                accumulatedEquivalentAssetAmount: 0
            });
        }

        // push
        stakeTokenStakeInfos[stakeToken].push(
            StakeInfo({
                amount: stakeAmount,
                shareAmount: shareAmount,
                accumulatedStakeTokenAmount: lastStakeInfo
                    .accumulatedStakeTokenAmount + stakeAmount,
                accumulatedShareAmount: lastStakeInfo.accumulatedShareAmount +
                    shareAmount,
                accumulatedEquivalentAssetAmount: lastStakeInfo
                    .accumulatedEquivalentAssetAmount + equivalentAssetAmount
            })
        );

        // update accumulatedEquivalentTokenAmounts
        accumulatedEquivalentTokenAmounts[stakeToken] += equivalentAssetAmount;
    }

    // mint mToken
    function _mintMToken(
        address stakeToken,
        uint256 amount,
        address shareReceiver
    ) internal returns (uint256, uint) {
        uint equivalentAssetAmount = convertDecimal({
            amount: amount,
            fromDecimal: acceptTokenInfos[stakeToken].stakeTokenDecimals,
            toDecimal: acceptTokenInfos[stakeToken].mTokenDecimals
        });

        uint conversionRate = acceptTokenInfos[stakeToken].conversionRate;

        // check conversionRate is set
        require(conversionRate > 0, "conversionRate not set");

        // apply conversin rate
        equivalentAssetAmount = (equivalentAssetAmount * conversionRate) / BASE;

        // mint mToken
        uint shareAmount = IMToken(acceptTokenInfos[stakeToken].mToken)
            .mintWithAssetAmount(equivalentAssetAmount, shareReceiver);

        return (equivalentAssetAmount, shareAmount);
    }

    // receive token
    function _receiveToken(
        address token,
        uint256 amount,
        uint256 remainMsgValue
    ) internal returns (uint256) {
        if (token == address(0)) {
            require(
                remainMsgValue >= amount,
                "msgValue less than deposit amount"
            );
            return remainMsgValue - amount;
        } else {
            // transfer token
            router.pluginTransferERC20(
                token,
                msg.sender,
                address(this),
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
                mToken: acceptTokenInfos[acceptTokens[i]].mToken,
                stakeToken: tokenAddr,
                stakeTokenDecimals: isNative
                    ? 18
                    : ERC20Upgradeable(acceptTokens[i]).decimals(),
                depositPaused: acceptTokenInfos[acceptTokens[i]].depositPaused,
                minDepositAmount: acceptTokenInfos[acceptTokens[i]]
                    .minDepositAmount,
                conversionRate: acceptTokenInfos[acceptTokens[i]]
                    .conversionRate,
                feeReceiver: acceptTokenInfos[acceptTokens[i]].feeReceiver,
                fee: acceptTokenInfos[acceptTokens[i]].fee,
                name: isNative ? "" : ERC20Upgradeable(acceptTokens[i]).name(),
                symbol: isNative
                    ? ""
                    : ERC20Upgradeable(acceptTokens[i]).symbol()
            });
        }

        return tokens;
    }

    // get all accept tokens information
    function getAllAcceptTokensV2()
        public
        view
        returns (AcceptTokenInfo[] memory)
    {
        AcceptTokenInfo[] memory tokens = new AcceptTokenInfo[](
            acceptTokens.length
        );

        for (uint256 i = 0; i < acceptTokens.length; ++i) {
            tokens[i] = acceptTokenInfos[acceptTokens[i]];
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

    // batch set token min depositAmount status
    function batchSetTokenMinDepositAmountStatus(
        address[] memory _tokens,
        uint[] memory _minDepositAmounts
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            _tokens.length == _minDepositAmounts.length,
            "length not match"
        );

        for (uint256 i = 0; i < _tokens.length; ++i) {
            require(
                acceptTokenInfos[_tokens[i]].registered,
                "token not registered"
            );
            acceptTokenInfos[_tokens[i]].minDepositAmount = _minDepositAmounts[
                i
            ];
        }
    }

    function convertDecimal(
        uint amount,
        uint8 fromDecimal,
        uint8 toDecimal
    ) public pure returns (uint) {
        // require fromDecimal smaller than toDecimal
        require(fromDecimal <= toDecimal, "fromDecimal larger than toDecimal");

        return amount * (10 ** (toDecimal - fromDecimal));
    }

    // update stakeToken conversion rate
    function updateConversionRate(
        address stakeToken,
        uint conversionRate
    ) public onlyRole(CONVERSION_RATE_UPDATE_ROLE) {
        require(
            acceptTokenInfos[stakeToken].registered,
            "token not registered"
        );
        acceptTokenInfos[stakeToken].conversionRate = conversionRate;

        emit UpdateConversionRate(stakeToken, conversionRate);
    }

    // withdraw token
    function withdraw(
        address stakeToken,
        address withdrawReceiver
    ) public nonReentrant onlyRole(STAKETOKEN_WITHDRAW_ROLE) {
        require(
            acceptTokenInfos[stakeToken].registered,
            "token not registered"
        );

        // get last stakeInfo
        uint256 stakeInfoLength = stakeTokenStakeInfos[stakeToken].length;

        // next withdraw index
        uint nextIndex = stakeTokenNextToWithdrawStakeIndex[stakeToken];

        require(nextIndex + 1 <= stakeInfoLength, "no unhandled stake");

        StakeInfo memory lastStakeInfo = stakeTokenStakeInfos[stakeToken][
            stakeInfoLength - 1
        ];

        StakeInfo memory firstStakeInfo;

        if (nextIndex == 0) {
            firstStakeInfo = StakeInfo({
                amount: 0,
                shareAmount: 0,
                accumulatedStakeTokenAmount: 0,
                accumulatedShareAmount: 0,
                accumulatedEquivalentAssetAmount: 0
            });
        } else {
            firstStakeInfo = stakeTokenStakeInfos[stakeToken][nextIndex - 1];
        }

        // construct checkpoint
        WithdrawCheckpoint memory checkpoint = WithdrawCheckpoint({
            startIndex: nextIndex,
            endIndex: stakeInfoLength - 1,
            accumulatedStakeTokenAmount: lastStakeInfo
                .accumulatedStakeTokenAmount -
                firstStakeInfo.accumulatedStakeTokenAmount,
            accumulatedShareAmount: lastStakeInfo.accumulatedShareAmount -
                firstStakeInfo.accumulatedShareAmount,
            accumulatedEquivalentAssetAmount: lastStakeInfo
                .accumulatedEquivalentAssetAmount -
                firstStakeInfo.accumulatedEquivalentAssetAmount
        });

        // update withdraw checkpoint
        stakeTokenWithdrawCheckpoints[stakeToken].push(checkpoint);

        // update toFinalizeCheckpointIndexs
        toFinalizeCheckpointIndexs[stakeToken].push(
            stakeTokenWithdrawCheckpoints[stakeToken].length - 1
        );

        // update next withdraw index
        stakeTokenNextToWithdrawStakeIndex[stakeToken] = stakeInfoLength;

        // transfer stakeToken
        if (stakeToken == address(0)) {
            Address.sendValue(
                payable(withdrawReceiver),
                checkpoint.accumulatedStakeTokenAmount
            );
        } else {
            IERC20(stakeToken).safeTransfer(
                withdrawReceiver,
                checkpoint.accumulatedStakeTokenAmount
            );
        }

        emit Withdraw(
            stakeToken,
            withdrawReceiver,
            checkpoint.accumulatedStakeTokenAmount,
            toFinalizeCheckpointIndexs[stakeToken].length - 1
        );
    }

    // finalize withdraw
    function finalizeWithdraw(
        address stakeToken,
        uint checkpointIndex
    ) public onlyRole(FINALIZE_WITHDRAW_ROLE) {
        require(
            acceptTokenInfos[stakeToken].registered,
            "token not registered"
        );

        require(
            checkpointIndex < toFinalizeCheckpointIndexs[stakeToken].length,
            "invalid checkpointIndex"
        );

        uint checkpointIndexToFinalize = toFinalizeCheckpointIndexs[stakeToken][
            checkpointIndex
        ];

        WithdrawCheckpoint memory checkpoint = stakeTokenWithdrawCheckpoints[
            stakeToken
        ][checkpointIndexToFinalize];

        // update accumulatedEquivalentTokenAmounts
        cancelledEquivalentTokenAmounts[stakeToken] += checkpoint
            .accumulatedEquivalentAssetAmount;

        // remove from toFinalizeCheckpointIndexs
        toFinalizeCheckpointIndexs[stakeToken][
            checkpointIndex
        ] = toFinalizeCheckpointIndexs[stakeToken][
            toFinalizeCheckpointIndexs[stakeToken].length - 1
        ];
        toFinalizeCheckpointIndexs[stakeToken].pop();

        // emit
        emit FinalizeWithdrawCheckpoint(
            stakeToken,
            checkpointIndexToFinalize,
            checkpoint.accumulatedStakeTokenAmount,
            checkpoint.accumulatedShareAmount,
            checkpoint.accumulatedEquivalentAssetAmount
        );
    }

    // get stakeInfo length
    function getStakeInfoLength(address stakeToken) public view returns (uint) {
        return stakeTokenStakeInfos[stakeToken].length;
    }

    // get stakeInfos
    function getStakeInfo(
        address stakeToken,
        uint index
    ) public view returns (StakeInfo memory) {
        // length
        uint stakeInfoLength = stakeTokenStakeInfos[stakeToken].length;
        require(index < stakeInfoLength, "invalid index");

        return stakeTokenStakeInfos[stakeToken][index];
    }

    // get withdrawCheckpoint length
    function getWithdrawCheckpointLength(
        address stakeToken
    ) public view returns (uint) {
        return stakeTokenWithdrawCheckpoints[stakeToken].length;
    }

    // function to get withdrawCheckpoint
    function getWithdrawCheckpoint(
        address stakeToken,
        uint index
    ) public view returns (WithdrawCheckpoint memory) {
        // length
        uint checkpointLength = stakeTokenWithdrawCheckpoints[stakeToken]
            .length;
        require(index < checkpointLength, "invalid index");

        return stakeTokenWithdrawCheckpoints[stakeToken][index];
    }

    // all wait for finalize withdraw checkpoint indexs
    function getAllWaitForFinalizeWithdrawCheckpointIndexs(
        address stakeToken
    ) public view returns (uint[] memory) {
        // new array
        uint[] memory indexes = new uint[](
            toFinalizeCheckpointIndexs[stakeToken].length
        );

        for (
            uint i = 0;
            i < toFinalizeCheckpointIndexs[stakeToken].length;
            ++i
        ) {
            indexes[i] = toFinalizeCheckpointIndexs[stakeToken][i];
        }

        return indexes;
    }
}
