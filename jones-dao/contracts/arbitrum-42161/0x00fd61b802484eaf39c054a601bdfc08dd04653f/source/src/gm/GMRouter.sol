// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {EIP712Upgradeable} from "openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {ECDSA} from "openzeppelin-contracts/utils/cryptography/ECDSA.sol";

import {ReentrancyGuardUpgradeable} from "openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {UpgradeableOperable} from "src/common/UpgradeableOperable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";

import {IExchangeRouter} from "src/interfaces/gmx/IExchangeRouter.sol";

contract GMRouter is
    IGMRouter,
    UpgradeableOperable,
    EIP712Upgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using FixedPointMathLib for uint256;

    IjGMIndex public vault;
    IGMStrategy public strategy;

    ///@notice Nonce for struct param
    uint256 public nonce;

    ///@notice Signer Bot
    address public signer;

    ///@notice Signer Bot
    address public leverageRouter;

    IERC20 public constant USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);

    /// @notice TypeHashes
    bytes32 public gmDataTypeHash;
    bytes32 public dataTypeHash;

    /// @notice GMX Deposit Feature
    bytes32 public constant EXECUTE_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_DEPOSIT_FEATURE_DISABLED"));
    /// @notice GMX Withdrawal Feature
    bytes32 public constant EXECUTE_WITHDRAWAL_FEATURE_DISABLED =
        keccak256(abi.encode("EXECUTE_WITHDRAWAL_FEATURE_DISABLED"));

    /// @notice Gmx Contracts
    IExchangeRouter public gmxRouter;
    address public gmxDepositHandler;
    address public gmxWithdrawHandler;

    function initialize(address _strategy, address _vault, address _signer) external initializer {
        __Governable_init(msg.sender);
        __EIP712_init("Jones GM Index", "1");
        __ReentrancyGuard_init();

        vault = IjGMIndex(_vault);
        strategy = IGMStrategy(payable(_strategy));

        signer = _signer;

        gmDataTypeHash = keccak256(
            "GMData(uint8 gmTokenIndex,address[] longPath,address[] shortPath,uint256 longMinAmountOut,uint256 shortMinAmountOut,uint256 amount,uint256 executionFee,uint256 callbackGasLimit)"
        );
        dataTypeHash = keccak256(
            "Data(uint256 nonce,uint8 action,uint256 amount,uint256 aum,uint256 executionAmount,IGMStrategy.GMData[] gmData,uint256 deadline)GMData(uint8 gmTokenIndex,address[] longPath,address[] shortPath,uint256 longMinAmountOut,uint256 shortMinAmountOut,uint256 amount,uint256 executionFee,uint256 callbackGasLimit)"
        );

        gmxRouter = IExchangeRouter(0x7C68C7866A64FA2160F78EEaE12217FFbf871fa8);
        gmxDepositHandler = 0x9Dc4f12Eb2d8405b499FB5B8AF79a5f64aB8a457;
        gmxWithdrawHandler = 0x9E32088F3c1a5EB38D32d1Ec6ba0bCBF499DC9ac;
    }

    /**
     * @notice Deposit USDC and get Jones GM.
     * @param _assets Amount of USDC.
     * @param _receiver Who will receive jGM.
     * @param _usdAUM Assets under management in USD.
     * @param _data Deposit Data.
     * @param _signature Bot signature.
     */
    function createDeposit(
        uint256 _assets,
        address _receiver,
        uint256 _usdAUM,
        bytes calldata _data,
        bytes calldata _signature
    ) external payable nonReentrant whenNotPaused onlyOperator {
        if (_assets == 0) {
            revert ZeroAmount();
        }

        gmxDepositCheck();

        ///@notice Decode Data
        IGMRouter.Data memory data = abi.decode(_data, (IGMRouter.Data));

        ///@notice Verify Signature for Deposit Data
        verifyParams(data, _signature);

        ///@notice Update Total USDC Value of Vault
        vault.updateTotalValue(_usdAUM);

        ///@notice Calculate Possible Shares
        uint256 shares = vault.previewDeposit(_assets);

        ///@notice Transfer Assets to Strategy
        USDC.transferFrom(msg.sender, address(strategy), _assets);

        ///@notice Trigger Deposit in Strategy
        strategy.strategyDeposit{value: msg.value}(_receiver, _assets, shares, data.gmData);

        emit NewDeposit(msg.sender, _receiver, _assets);
    }

    /**
     * @notice Withdraw USDC by burning jGM
     * @param _shares Amount of jGM
     * @param _receiver Who will receive USDC.
     * @param _usdAUM Assets under management in USD.
     * @param _data Withdrawal Data.
     * @param _signature Bot signature.
     */
    function createWithdrawal(
        uint256 _shares,
        address _receiver,
        uint256 _usdAUM,
        bytes calldata _data,
        bytes calldata _signature
    ) external payable nonReentrant whenNotPaused onlyOperator {
        if (_shares == 0) {
            revert ZeroAmount();
        }

        gmxWithdrawalCheck();

        ///@notice Decode Data
        IGMRouter.Data memory data = abi.decode(_data, (IGMRouter.Data));

        ///@notice Verify Signature for Withdrawal Data
        verifyParams(data, _signature);

        ///@notice Update Total USDC Value of Vault
        vault.updateTotalValue(_usdAUM);

        ///@notice Move to strategy for custody
        vault.burn(msg.sender, _shares);
        vault.mint(_shares, address(strategy));

        //Get assets
        uint256 assets = vault.previewRedeem(abi.encode(data)); // USDC amount

        // Trigger withdraw in Strategy
        strategy.strategyWithdraw{value: msg.value}(_receiver, assets, _shares, data.gmData);

        emit NewWithdraw(msg.sender, _receiver, assets, _shares);
    }

    /**
     * @notice Increase nonce
     */
    function increaseNonce() external whenNotPaused onlyOperator {
        nonce = nonce + 1;
    }

    function gmxWithdrawalCheck() public {
        if (
            gmxRouter.dataStore().getBool(
                keccak256(abi.encode(EXECUTE_WITHDRAWAL_FEATURE_DISABLED, gmxWithdrawHandler))
            )
        ) {
            revert GMXFeatureDisable();
        }
    }

    function gmxDepositCheck() public {
        if (gmxRouter.dataStore().getBool(keccak256(abi.encode(EXECUTE_DEPOSIT_FEATURE_DISABLED, gmxDepositHandler)))) {
            revert GMXFeatureDisable();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 Only Owner                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update GMX V2 Contracts
     */
    function updateGmxVariables(address _gmxRouter, address _gmxDepositHandler, address _gmxWithdrawHandler)
        external
        onlyGovernor
    {
        gmxRouter = IExchangeRouter(_gmxRouter);
        gmxDepositHandler = _gmxDepositHandler;
        gmxWithdrawHandler = _gmxWithdrawHandler;
    }

    /**
     * @notice Update contracts.
     */
    function updateContracts(address _vault, address _strategy) external onlyGovernor {
        vault = IjGMIndex(_vault);
        strategy = IGMStrategy(payable(_strategy));
    }

    /**
     * @notice Update signer.
     */
    function updateSigner(address _signer) external onlyGovernor {
        signer = _signer;
    }

    /**
     * @notice Update type hashes.
     */
    function updateTypeHashes(bytes32 _gmData, bytes32 _data) external onlyGovernor {
        gmDataTypeHash = _gmData;
        dataTypeHash = _data;
    }

    /**
     * @notice Pause Deposits.
     */
    function pause() external onlyGovernor {
        if (paused()) {
            _unpause();
        } else {
            _pause();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   Private                                  */
    /* -------------------------------------------------------------------------- */

    function verifyParams(IGMRouter.Data memory params, bytes calldata signature) public {
        nonce = nonce + 1;

        uint256 length = params.gmData.length;
        bytes32[] memory gmDataHashes = new bytes32[](length);

        for (uint256 i; i < length;) {
            IGMStrategy.GMData memory gmData = params.gmData[i];
            gmDataHashes[i] = keccak256(
                abi.encode(
                    gmDataTypeHash,
                    gmData.gmTokenIndex,
                    keccak256(abi.encodePacked(gmData.longPath)),
                    keccak256(abi.encodePacked(gmData.shortPath)),
                    gmData.longMinAmountOut,
                    gmData.shortMinAmountOut,
                    gmData.amount,
                    gmData.executionFee,
                    gmData.callbackGasLimit
                )
            );

            unchecked {
                ++i;
            }
        }

        address _signer = ECDSA.recover(
            _hashTypedDataV4(
                keccak256(
                    abi.encode(
                        dataTypeHash,
                        nonce,
                        params.action,
                        params.amount,
                        params.aum,
                        params.executionAmount,
                        keccak256(abi.encodePacked(gmDataHashes)),
                        params.deadline
                    )
                )
            ),
            signature
        );

        if (_signer != signer) {
            revert InvalidParameters();
        }
    }
}
