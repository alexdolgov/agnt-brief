// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {Keepable, Governable} from "src/common/Keepable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IRewardDistributor} from "src/interfaces/IRewardDistributor.sol";
import {ITokenSwapper} from "src/interfaces/ITokenSwapper.sol";
import {IAuraBribe} from "src/interfaces/IAuraBribe.sol";
import {IStargate} from "src/interfaces/IStargate.sol";
import {IStargateRouter} from "src/interfaces/IStargateRouter.sol";
import {IPool} from "src/interfaces/IPool.sol";
import {IWeth} from "src/interfaces/IWeth.sol";

interface IStargate2 {
    function quoteSend(SendParam calldata _sendParam, bool _payInLzToken)
        external
        view
        returns (MessagingFee memory fee);

    struct MessagingFee {
        uint256 nativeFee;
        uint256 lzTokenFee;
    }

    /**
     * @dev Struct representing token parameters for the OFT send() operation.
     */
    struct SendParam {
        uint32 dstEid; // Destination endpoint ID.
        bytes32 to; // Recipient address.
        uint256 amountLD; // Amount to send in local decimals.
        uint256 minAmountLD; // Minimum amount to send in local decimals.
        bytes extraOptions; // Additional options supplied by the caller to be used in the LayerZero message.
        bytes composeMsg; // The composed message for the send() operation.
        bytes oftCmd; // The OFT command to be executed, unused in default OFT implementations.
    }

    struct MessagingReceipt {
        bytes32 guid;
        uint64 nonce;
        MessagingFee fee;
    }

    /**
     * @dev Struct representing OFT receipt information.
     */
    struct OFTReceipt {
        uint256 amountSentLD; // Amount of tokens ACTUALLY debited from the sender in local decimals.
        // @dev In non-default implementations, the amountReceivedLD COULD differ from this value.
        uint256 amountReceivedLD; // Amount of tokens to be received on the remote side.
    }
    /**
     * @notice Executes the send() operation.
     * @param _sendParam The parameters for the send operation.
     * @param _fee The fee information supplied by the caller.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds from fees etc. on the src.
     * @return receipt The LayerZero messaging receipt from the send() operation.
     * @return oftReceipt The OFT receipt information.
     *
     * @dev MessagingReceipt: LayerZero msg receipt
     *  - guid: The unique identifier for the sent message.
     *  - nonce: The nonce of the sent message.
     *  - fee: The LayerZero fee incurred for the message.
     */

    function send(SendParam calldata _sendParam, MessagingFee calldata _fee, address _refundAddress)
        external
        payable
        returns (MessagingReceipt memory, OFTReceipt memory);
}

abstract contract MultichainRewards is AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    using FixedPointMathLib for uint256;

    bytes32 private constant KEEPER = keccak256("KEEPER");
    uint256 public constant BASIS = 1e12;

    address public WETH;
    uint16 public chainId;
    IAuraBribe public auraBribe;
    IStargate public routerETH;
    mapping(address => ITokenSwapper) public swappers; // tokenIn => swapper
    ITokenSwapper public defaultSwapper;
    bytes public bribeReceiver;
    uint256 public slippage;

    function initialize(address _keeper, address _bribeReceiver, address _defaultSwapper) public virtual initializer {
        __AccessControl_init();

        if (_keeper == address(0) || _bribeReceiver == address(0) || _defaultSwapper == address(0)) {
            revert ZeroAddress();
        }

        bribeReceiver = abi.encodePacked(_bribeReceiver);
        defaultSwapper = ITokenSwapper(_defaultSwapper);
        slippage = BASIS.mulDivDown(99, 100);

        chainId = 101;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(KEEPER, _keeper);
    }

    receive() external payable {}

    /**
     * @notice Allows the keeper address to claim rewards from the hiddenHandDistributor contract and process them accordingly.
     * @param _hiddenHandDistributor HiddenHand contract that distribute bribe rewards.
     * @param _claims The raw data that should be sent to the contract for making a transaction. Includes the encoded function signature and params.
     * @param _externalData extra data needed for swap.
     */
    function bridgingBribes(
        IRewardDistributor _hiddenHandDistributor,
        IRewardDistributor.Claim[] calldata _claims,
        uint256[] memory minAmountOut,
        bytes[] memory _externalData
    ) external nonReentrant {
        _onlyKeeper();

        uint256 numClaims = _claims.length;

        // Track token balances before bribes claim
        address[] memory rewardTokens = new address[](numClaims);
        for (uint256 i; i < numClaims;) {
            (rewardTokens[i],,,) = _hiddenHandDistributor.rewards(_claims[i].identifier);
            //++i should never overflow since it will always be less than the length of the _claims array
            unchecked {
                ++i;
            }
        }

        // Claim bribes
        _hiddenHandDistributor.claim(_claims);

        // send rewards to bridge contract

        for (uint256 i; i < numClaims;) {
            if (rewardTokens[i] != address(0) || rewardTokens[i] != WETH) {
                uint256 rewards = IERC20(rewardTokens[i]).balanceOf(address(this));
                if (rewards > 0) {
                    // Swap rewards token -> WETH
                    ITokenSwapper tokenSwapper = getSwapper(rewardTokens[i]);
                    if (address(tokenSwapper) == address(0)) {
                        revert NoSwapper();
                    }
                    IERC20(rewardTokens[i]).approve(address(tokenSwapper), rewards);
                    tokenSwapper.swap(rewardTokens[i], rewards, WETH, minAmountOut[i], _externalData[i]);
                }
            }

            unchecked {
                //++i should never overflow since it will always be less than the length of the _claims array
                ++i;
            }
        }

        address thisAddress = address(this);

        IWeth(WETH).withdraw(IERC20(WETH).balanceOf(thisAddress));

        // check eth balance
        uint256 balance = thisAddress.balance;

        uint256 fees = _bridgeFees();

        if (balance > fees) {
            routerETH.swapETH{value: balance}(
                chainId, payable(thisAddress), bribeReceiver, balance - fees, _applySlippage(balance - fees)
            );
            emit BridgingBribes(msg.sender, bribeReceiver, balance, true);
        } else {
            emit BridgingBribes(msg.sender, bribeReceiver, balance, false);
        }
    }

    /**
     * @notice Allows the keeper address to claim rewards from the hiddenHandDistributor contract.
     * @param _hiddenHandDistributor HiddenHand contract that distribute bribe rewards.
     * @param _claims The raw data that should be sent to the contract for making a transaction. Includes the encoded function signature and params.
     */
    function claimBribes(IRewardDistributor _hiddenHandDistributor, IRewardDistributor.Claim[] calldata _claims)
        external
        nonReentrant
    {
        _onlyKeeper();

        uint256 numClaims = _claims.length;

        // Track token balances before bribes claim
        address[] memory rewardTokens = new address[](numClaims);
        for (uint256 i; i < numClaims;) {
            (rewardTokens[i],,,) = _hiddenHandDistributor.rewards(_claims[i].identifier);
            //++i should never overflow since it will always be less than the length of the _claims array
            unchecked {
                ++i;
            }
        }

        // Claim bribes
        _hiddenHandDistributor.claim(_claims);
    }

    /**
     * @notice Allows the keeper swap rewards for ETH.
     * @param _token token address to be swapped.
     * @param _amount amount to be swap.
     * @param _externalData extra data needed for swap.
     */
    function swap(address _token, uint256 _amount, uint256 _minAmountOut, bytes memory _externalData)
        external
        nonReentrant
    {
        _onlyKeeper();

        ITokenSwapper tokenSwapper = getSwapper(_token);
        if (address(tokenSwapper) == address(0)) {
            revert NoSwapper();
        }
        IERC20(_token).approve(address(tokenSwapper), _amount);
        tokenSwapper.swap(_token, _amount, WETH, _minAmountOut, _externalData);
        IWeth(WETH).withdraw(IERC20(WETH).balanceOf(address(this)));
    }

    /**
     * @notice Bridge ETH to mainnet using layer zero.
     */
    function bridge() external nonReentrant {
        _onlyKeeper();

        // Bridge
        address thisAddress = address(this);
        // check eth balance
        uint256 balance = thisAddress.balance;

        uint256 fees = _bridgeFees();

        if (balance > fees) {
            routerETH.swapETH{value: balance}(
                chainId, payable(thisAddress), bribeReceiver, balance - fees, _applySlippage(balance - fees)
            );
            emit BridgingBribes(msg.sender, bribeReceiver, balance, true);
        } else {
            emit BridgingBribes(msg.sender, bribeReceiver, balance, false);
        }
    }

    function addressToBytes32(address _addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }

    function v2Costs(uint256 _amountToBridge)
        public
        view
        returns (uint256, IStargate2.SendParam memory, IStargate2.MessagingFee memory)
    {
        address newRouter = 0xA45B5130f36CDcA45667738e2a258AB09f4A5f7F;
        address bribeReceiverAddress = 0x7629fc134e5a7feBEf6340438D96881C8D121f2c;
        bytes32 target = addressToBytes32(bribeReceiverAddress);

        IStargate2.SendParam memory sendParam =
            IStargate2.SendParam(30101, target, _amountToBridge, _applySlippage(_amountToBridge), "", "", "");

        IStargate2.MessagingFee memory fee = IStargate2(newRouter).quoteSend(sendParam, false);

        return (fee.nativeFee + _amountToBridge, sendParam, fee);
    }

    function bridgeVersion2(uint256 _amountToBridge) external {
        _onlyKeeper();

        address newRouter = 0xA45B5130f36CDcA45667738e2a258AB09f4A5f7F;

        (uint256 totalEthNeeded, IStargate2.SendParam memory sendParam, IStargate2.MessagingFee memory fee) =
            v2Costs(_amountToBridge);

        IStargate2(newRouter).send{value: totalEthNeeded}(sendParam, fee, address(this));

        emit BridgingBribes(msg.sender, bribeReceiver, _amountToBridge, true);
    }

    function getSwapper(address _tokenIn) public view returns (ITokenSwapper) {
        ITokenSwapper swapper = swappers[_tokenIn];

        if (address(swapper) != address(0)) {
            return swapper;
        } else if (_isWhitelisted(_tokenIn) && address(swapper) == address(0)) {
            return defaultSwapper;
        } else {
            revert InvalidToken();
        }
    }

    function _isWhitelisted(address _token) private view returns (bool) {
        return auraBribe.isWhitelistedToken(_token);
    }

    function _applySlippage(uint256 _amount) private view returns (uint256) {
        return _amount.mulDivDown(slippage, BASIS);
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external {
        _onlyGovernor();
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset = IERC20(_assets[i]);
            uint256 assetBalance = asset.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    function addKeeper(address _keeper) external {
        _onlyGovernor();

        if (_keeper == address(0)) {
            revert ZeroAddress();
        }

        _grantRole(KEEPER, _keeper);
    }

    function updateDefaultSwapper(ITokenSwapper _defaultSwapper) external {
        _onlyGovernor();
        defaultSwapper = _defaultSwapper;
    }

    function updateBribeReceiver(address _bribeReceiver) external {
        _onlyGovernor();
        bribeReceiver = abi.encodePacked(_bribeReceiver);
    }

    function updateRouterETH(address _routerETH) external {
        _onlyGovernor();
        routerETH = IStargate(_routerETH);
    }

    function updateAuraBribe(address _auraBribe) external {
        _onlyGovernor();
        auraBribe = IAuraBribe(_auraBribe);
    }

    function updateSlippage(uint256 _slippage) external {
        _onlyGovernor();
        slippage = _slippage;
    }

    function updateChainId(uint16 _chainId) external {
        _onlyGovernor();
        chainId = _chainId;
    }

    /**
     * @notice Sets the token swapper contract for the given token pair.
     * @param tokenIn The address of the input token contract.
     * @param tokenSwapper The address of the token swapper contract.
     * @param allowance The allowance for the token swapper contract to transfer the input token.
     * @dev This function can only be called by the contract owner.
     */
    function setTokenSwapper(address tokenIn, address tokenSwapper, uint256 allowance) external {
        _onlyGovernor();
        swappers[tokenIn] = ITokenSwapper(tokenSwapper);

        IERC20(tokenIn).approve(tokenSwapper, allowance);
    }

    function _bridgeFees() private view returns (uint256) {
        IStargateRouter.lzTxObj memory lzTx = IStargateRouter.lzTxObj(0, 0, "0x");

        // Minimal Payload
        bytes memory payload = abi.encode(
            1, // Means swap ETH in one chain to ETH in other chain
            routerETH.poolId(), // ETH pool id is the same in both chains
            routerETH.poolId(), // ETH pool id is the same in both chains
            lzTx.dstGasForCall, // No extra gas needed on dstChain
            IPool.CreditObj(1, 1), // Dummy credit obj
            IPool.SwapObj(1, 1, 1, 1, 1, 1), // Dummy swap obj
            bribeReceiver, // contract address that will receive the lz message
            bytes("") // No custom adapter params
        );

        (uint256 nativeFee,) =
            IStargateRouter(routerETH.stargateRouter()).quoteLayerZeroFee(chainId, 1, bribeReceiver, payload, lzTx);

        return nativeFee;
    }

    function _onlyGovernor() private view {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert OnlyGov();
        }
    }

    function _onlyKeeper() private view {
        if (!hasRole(KEEPER, msg.sender)) {
            revert OnlyKeeper();
        }
    }

    event BridgingBribes(address indexed caller, bytes indexed to, uint256 amount, bool bridged);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error FailSendETH();
    error OnlyGov();
    error OnlyKeeper();
    error NoSwapper();
    error InvalidToken();
    error ZeroAddress();
}
