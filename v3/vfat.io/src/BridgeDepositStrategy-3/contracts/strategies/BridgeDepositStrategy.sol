// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import {
    StrategyModule,
    SickleFactory,
    Sickle,
    ConnectorRegistry
} from "contracts/modules/StrategyModule.sol";
import { GuardianAdmin } from "contracts/base/GuardianAdmin.sol";
import { IFarmConnector, Farm } from "contracts/interfaces/IFarmConnector.sol";
import { INftFarmConnector } from "contracts/interfaces/INftFarmConnector.sol";
import {
    INftLiquidityConnector
} from "contracts/interfaces/INftLiquidityConnector.sol";
import { IFeesLib } from "contracts/interfaces/libraries/IFeesLib.sol";
import { ISwapLib } from "contracts/interfaces/libraries/ISwapLib.sol";
import { ITransferLib } from "contracts/interfaces/libraries/ITransferLib.sol";
import { IZapLib } from "contracts/interfaces/libraries/IZapLib.sol";
import { INftZapLib } from "contracts/interfaces/libraries/INftZapLib.sol";
import {
    INftSettingsLib
} from "contracts/interfaces/libraries/INftSettingsLib.sol";
import {
    INftSettingsRegistry,
    NftSettings
} from "contracts/interfaces/INftSettingsRegistry.sol";
import {
    INonfungiblePositionManager
} from "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";
import { ZapIn } from "contracts/structs/ZapStructs.sol";
import { NftZapIn } from "contracts/structs/NftZapStructs.sol";
import { NftPosition } from "contracts/structs/NftFarmStrategyStructs.sol";
import { EIP712 } from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

library BridgeDepositStrategyFees {
    bytes4 constant Deposit = bytes4(keccak256("BridgeDepositFee"));
}

/// @title BridgeDepositStrategy
/// @author vfat.tools
/// @notice Receives bridged tokens into a user's Sickle and executes a
/// deposit or increase into an ERC20 or NFT farm position.
/// Bridge-specific callback handling is delegated to per-bridge adapter
/// contracts. Also supports a manual depositFromSickle() path for CCTP.
contract BridgeDepositStrategy is
    StrategyModule,
    GuardianAdmin,
    EIP712
{
    /// ERRORS ///
    error NotWhitelistedAdapter();
    error ZeroSwapAmountNotAllowed();
    error ZeroLiquidityAmountNotAllowed();
    error PleaseUseNftIncrease();
    error PleaseUseNftDeposit();
    error NftSupplyDidntIncrease();
    error OnlySelf();
    error NotGuardianOrAdmin();
    error PausedError();
    /// @dev Thrown by depositFromSickleWithSignature when the signature, the
    /// deadline, or the intent-id replay guard rejects the call. Reverts
    /// instead of falling back because the strategy holds no funds in this
    /// path -- the bridged tokens already sit in the Sickle.
    error InvalidIntentSignature();
    /// @dev Thrown by depositFromSickleWithSignature when the keeper-supplied
    /// `amount` is below `params.minAmount`. Same rationale as above:
    /// revert, do not fall back.
    error AmountBelowMinimum();

    /// EVENTS ///

    event BridgeDeposited(
        Sickle indexed sickle,
        address stakingContract,
        uint256 poolIndex,
        address tokenIn,
        uint256 amountIn
    );

    event BridgeDepositFallback(
        address indexed sickleOwner, address token, uint256 amount
    );

    event WhitelistedAdapterSet(address adapter, bool whitelisted);
    event PausedSet(bool paused);

    /// ENUMS ///

    enum DepositMode {
        /// ERC20 farm, new position (FarmStrategy.deposit pattern).
        /// NOTE: In the bridge context FarmDeposit and FarmIncrease share
        /// the same execution path because the Sickle must already exist
        /// (tokens are bridged into it) and position settings are managed
        /// by the source-chain transaction.  The two variants are kept
        /// for frontend / intent semantics and parity with the NFT modes.
        FarmDeposit,
        /// ERC20 farm, existing position (FarmStrategy.increase pattern).
        /// See FarmDeposit note — execution is identical.
        FarmIncrease,
        /// NFT farm, new position (NftFarmStrategy.deposit pattern)
        NftDeposit,
        /// NFT farm, existing position (NftFarmStrategy.increase pattern)
        NftIncrease
    }

    /// STRUCTS ///

    struct Libraries {
        ITransferLib transferLib;
        ISwapLib swapLib;
        IFeesLib feesLib;
        IZapLib zapLib;
        INftZapLib nftZapLib;
        INftSettingsLib nftSettingsLib;
    }

    struct DepositParams {
        DepositMode mode;
        /// @dev Minimum tokens that must be delivered to the strategy for
        /// the deposit branch to proceed. Set to 0 to disable the check.
        /// If the adapter forwards fewer tokens than this (bridge fee
        /// drift, FoT, under-delivery) the call falls back to a direct
        /// transfer to the sickle owner.
        uint256 minAmount;
        Farm farm;
        ZapIn zap;
        bytes extraData;
        address[] sweepTokens;
        NftDepositParams nftParams;
    }

    struct NftDepositParams {
        INonfungiblePositionManager nft;
        uint256 tokenId;
        NftZapIn nftZap;
        NftSettings settings;
        bool inPlace;
        bytes nftExtraData;
    }

    /// CONSTANTS ///

    bytes32 public constant BRIDGE_DEPOSIT_TYPEHASH = keccak256(
        "BridgeDeposit(address owner,address token,bytes32 paramsHash,bytes32 intentId,uint256 deadline)"
    );
    /// @dev Stargate deposits intentionally bind source provenance but not the
    /// exact delivered amount. Callers should keep `minAmount` tight enough
    /// to bound acceptable bridge slippage. Failed signature or amount-bound
    /// checks intentionally fall back without consuming `intentId` so the
    /// owner can retry with a later delivery.
    bytes32 public constant STARGATE_BRIDGE_DEPOSIT_TYPEHASH = keccak256(
        "StargateBridgeDeposit(address owner,address token,bytes32 paramsHash,bytes32 intentId,uint256 deadline,uint32 srcEid,bytes32 composeFrom)"
    );
    /// @dev Distinct typehash for the keeper-driven path so a signature
    /// produced for a callback adapter cannot be sniped by a third party to
    /// consume residual Sickle balance for the same `(token, params)`.
    /// Mirrors the defense-in-depth split between BRIDGE_DEPOSIT_TYPEHASH
    /// and STARGATE_BRIDGE_DEPOSIT_TYPEHASH.
    /// @dev `amount` is bound into the typehash because the keeper -- not
    /// the bridge protocol -- supplies the deposit amount on this path.
    /// Without binding, a malicious keeper could call with `amount = 0`
    /// to consume the intentId without performing the deposit, or pull
    /// residual Sickle balance up to the keeper's choosing. Binding makes
    /// the signed amount authoritative: if the Sickle balance is below
    /// `amount`, the deposit reverts (no harm); if above, only `amount`
    /// is deposited and the excess stays in the Sickle.
    bytes32 public constant SICKLE_DEPOSIT_TYPEHASH = keccak256(
        "SickleBridgeDeposit(address owner,address token,uint256 amount,bytes32 paramsHash,bytes32 intentId,uint256 deadline)"
    );

    /// STORAGE ///

    IZapLib public immutable zapLib;
    INftZapLib public immutable nftZapLib;
    ISwapLib public immutable swapLib;
    ITransferLib public immutable transferLib;
    IFeesLib public immutable feesLib;
    INftSettingsLib public immutable nftSettingsLib;

    INftSettingsRegistry public immutable nftSettingsRegistry;

    address public immutable strategyAddress;
    bool public paused;

    mapping(address => bool) public whitelistedAdapters;
    address[] private _adapters;
    mapping(address => uint256) private _adapterIndexPlusOne;
    mapping(address => mapping(bytes32 => bool)) public usedIntentIds;

    /// CONSTRUCTOR ///

    constructor(
        SickleFactory factory_,
        ConnectorRegistry connectorRegistry_,
        Libraries memory libraries,
        INftSettingsRegistry nftSettingsRegistry_,
        address admin_,
        address guardian_
    )
        StrategyModule(factory_, connectorRegistry_)
        GuardianAdmin(admin_, guardian_)
        EIP712("BridgeDepositStrategy", "1")
    {
        zapLib = libraries.zapLib;
        nftZapLib = libraries.nftZapLib;
        swapLib = libraries.swapLib;
        transferLib = libraries.transferLib;
        feesLib = libraries.feesLib;
        nftSettingsLib = libraries.nftSettingsLib;
        nftSettingsRegistry = nftSettingsRegistry_;
        strategyAddress = address(this);
    }

    /// ADMIN FUNCTIONS ///

    /// @notice Rescue tokens stuck in this contract
    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) external onlyAdmin {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    /// @notice Rescue ETH stuck in this contract
    function rescueETH(address to) external onlyAdmin {
        SafeTransferLib.safeTransferETH(to, address(this).balance);
    }

    function pause() external {
        if (msg.sender != guardian && msg.sender != admin) {
            revert NotGuardianOrAdmin();
        }
        if (paused) return;
        paused = true;
        emit PausedSet(true);
    }

    function unpause() external onlyAdmin {
        if (!paused) return;
        paused = false;
        emit PausedSet(false);
    }

    function setWhitelistedAdapter(
        address adapter,
        bool whitelisted
    ) external onlyAdmin {
        _setWhitelistedAdapter(adapter, whitelisted);
    }

    /// @notice Emergency-disable an adapter without waiting on governance.
    /// Re-enabling still requires the admin path.
    function emergencyDisableAdapter(
        address adapter
    ) external onlyGuardianOrAdmin {
        _setWhitelistedAdapter(adapter, false);
    }

    function _setWhitelistedAdapter(
        address adapter,
        bool whitelisted
    ) internal {
        bool currentlyAllowed = whitelistedAdapters[adapter];
        if (currentlyAllowed == whitelisted) return;

        whitelistedAdapters[adapter] = whitelisted;
        if (whitelisted) {
            _adapterIndexPlusOne[adapter] = _adapters.length + 1;
            _adapters.push(adapter);
        } else {
            uint256 indexPlusOne = _adapterIndexPlusOne[adapter];
            uint256 index = indexPlusOne - 1;
            uint256 lastIndex = _adapters.length - 1;
            if (index != lastIndex) {
                address last = _adapters[lastIndex];
                _adapters[index] = last;
                _adapterIndexPlusOne[last] = index + 1;
            }
            _adapters.pop();
            delete _adapterIndexPlusOne[adapter];
        }
        emit WhitelistedAdapterSet(adapter, whitelisted);
    }

    /// PUBLIC VIEW ///

    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @notice Enumerate the currently-allowed adapters.
    function adapters() external view returns (address[] memory) {
        return _adapters;
    }

    /// ADAPTER ENTRY POINT ///

    /// @notice Execute a deposit with bridged tokens. Callable only by
    /// whitelisted adapters which have already transferred tokens here.
    function executeDeposit(
        address token,
        uint256 amount,
        address sickleOwner,
        DepositParams calldata params,
        bytes32 intentId,
        uint256 deadline,
        bytes calldata signature
    ) external {
        _onlyWhitelistedAdapter();
        _requireNotPaused();
        if (!_tryVerifySignature(
                sickleOwner, token, params, intentId, deadline, signature
            )
        ) {
            _bridgeDepositFallback(token, amount, sickleOwner);
            return;
        }
        _finalizeVerifiedBridgeDeposit(
            token, amount, sickleOwner, params, intentId
        );
    }

    /// @notice Stargate-specific deposit entrypoint. Binds the authenticated
    /// LayerZero compose provenance into the signed intent so arbitrary source
    /// senders cannot consume a victim's deposit authorization.
    function executeStargateDeposit(
        address token,
        uint256 amount,
        address sickleOwner,
        DepositParams calldata params,
        bytes32 intentId,
        uint256 deadline,
        uint32 srcEid,
        bytes32 composeFrom,
        bytes calldata signature
    ) external {
        _onlyWhitelistedAdapter();
        _requireNotPaused();
        if (
            !_tryVerifyStargateSignature(
                sickleOwner,
                token,
                params,
                intentId,
                deadline,
                srcEid,
                composeFrom,
                signature
            )
        ) {
            _bridgeDepositFallback(token, amount, sickleOwner);
            return;
        }
        _finalizeVerifiedBridgeDeposit(
            token, amount, sickleOwner, params, intentId
        );
    }

    /// MANUAL TRIGGER ///

    /// @notice Manual deposit for bridges that deliver tokens directly to the
    /// Sickle without a callback (e.g. CCTP). The caller must be the Sickle
    /// owner and the tokens must already be in the Sickle.
    function depositFromSickle(
        address token,
        uint256 amount,
        DepositParams calldata params
    ) external {
        _requireNotPaused();
        Sickle sickle = getOrDeploySickle(msg.sender, address(0), bytes32(0));
        _executeDeposit(sickle, token, amount, params);
    }

    /// @notice Permissionless keeper-driven deposit for bridges that deliver
    /// tokens directly to a Sickle but carry no execution payload
    /// (OP-Stack `L1StandardBridge`, `SuperchainTokenBridge`, raw OFTs).
    /// Any caller can submit; the EIP-712 signature signed by `sickleOwner`
    /// is the authority. Tokens must already be in the Sickle.
    /// @dev Reverts on signature failure / amount-bound failure rather than
    /// falling back, because no funds sit in the strategy on this path.
    function depositFromSickleWithSignature(
        address sickleOwner,
        address token,
        uint256 amount,
        DepositParams calldata params,
        bytes32 intentId,
        uint256 deadline,
        bytes calldata signature
    ) external {
        _requireNotPaused();
        if (
            !_tryVerifySickleSignature(
                sickleOwner,
                token,
                amount,
                params,
                intentId,
                deadline,
                signature
            )
        ) {
            revert InvalidIntentSignature();
        }
        if (amount < params.minAmount) {
            revert AmountBelowMinimum();
        }
        usedIntentIds[sickleOwner][intentId] = true;
        Sickle sickle =
            getOrDeploySickle(sickleOwner, address(0), bytes32(0));
        _executeDeposit(sickle, token, amount, params);
    }

    /// INTERNAL ///

    function _onlyWhitelistedAdapter() internal view {
        if (!whitelistedAdapters[msg.sender]) {
            revert NotWhitelistedAdapter();
        }
    }

    function _requireNotPaused() internal view {
        if (paused) revert PausedError();
    }

    /// @dev Shared post-signature flow for all bridge deposit callbacks.
    function _finalizeVerifiedBridgeDeposit(
        address token,
        uint256 amount,
        address sickleOwner,
        DepositParams calldata params,
        bytes32 intentId
    ) internal {
        if (amount < params.minAmount) {
            _bridgeDepositFallback(token, amount, sickleOwner);
            return;
        }
        usedIntentIds[sickleOwner][intentId] = true;
        _bridgeDepositSafe(sickleOwner, token, amount, params);
    }

    function _bridgeDepositFallback(
        address token,
        uint256 amount,
        address sickleOwner
    ) internal {
        // This intentionally mirrors the generic bridge fallback model: on
        // invalid authorization or amount bounds, only the currently bridged
        // funds are returned to the payload-specified sickle owner.
        uint256 fallbackAmount =
            _transferAvailable(token, sickleOwner, amount);
        emit BridgeDepositFallback(sickleOwner, token, fallbackAmount);
    }

    function _tryVerifySignature(
        address owner,
        address token,
        DepositParams memory params,
        bytes32 intentId,
        uint256 deadline,
        bytes memory signature
    ) internal view returns (bool) {
        if (block.timestamp > deadline) return false;
        if (usedIntentIds[owner][intentId]) return false;

        bytes32 structHash = keccak256(
            abi.encode(
                BRIDGE_DEPOSIT_TYPEHASH,
                owner,
                token,
                keccak256(abi.encode(params)),
                intentId,
                deadline
            )
        );

        bytes32 digest = _hashTypedDataV4(structHash);
        (address recovered, ECDSA.RecoverError err) =
            ECDSA.tryRecover(digest, signature);

        return err == ECDSA.RecoverError.NoError && recovered == owner;
    }

    function _tryVerifyStargateSignature(
        address owner,
        address token,
        DepositParams memory params,
        bytes32 intentId,
        uint256 deadline,
        uint32 srcEid,
        bytes32 composeFrom,
        bytes memory signature
    ) internal view returns (bool) {
        if (block.timestamp > deadline) return false;
        if (usedIntentIds[owner][intentId]) return false;

        bytes32 structHash = keccak256(
            abi.encode(
                STARGATE_BRIDGE_DEPOSIT_TYPEHASH,
                owner,
                token,
                keccak256(abi.encode(params)),
                intentId,
                deadline,
                srcEid,
                composeFrom
            )
        );

        bytes32 digest = _hashTypedDataV4(structHash);
        (address recovered, ECDSA.RecoverError err) =
            ECDSA.tryRecover(digest, signature);

        return err == ECDSA.RecoverError.NoError && recovered == owner;
    }

    function _tryVerifySickleSignature(
        address owner,
        address token,
        uint256 amount,
        DepositParams memory params,
        bytes32 intentId,
        uint256 deadline,
        bytes memory signature
    ) internal view returns (bool) {
        if (block.timestamp > deadline) return false;
        if (usedIntentIds[owner][intentId]) return false;

        bytes32 structHash = keccak256(
            abi.encode(
                SICKLE_DEPOSIT_TYPEHASH,
                owner,
                token,
                amount,
                keccak256(abi.encode(params)),
                intentId,
                deadline
            )
        );

        bytes32 digest = _hashTypedDataV4(structHash);
        (address recovered, ECDSA.RecoverError err) =
            ECDSA.tryRecover(digest, signature);

        return err == ECDSA.RecoverError.NoError && recovered == owner;
    }

    function _validateZapAmounts(ZapIn memory zap) internal pure {
        for (uint256 i; i < zap.swaps.length; i++) {
            if (zap.swaps[i].amountIn == 0) {
                revert ZeroSwapAmountNotAllowed();
            }
        }
        uint256[] memory desired = zap.addLiquidityParams.desiredAmounts;
        for (uint256 i; i < desired.length; i++) {
            if (desired[i] == 0) {
                revert ZeroLiquidityAmountNotAllowed();
            }
        }
    }

    function _validateNftZapAmounts(
        NftZapIn memory nftZap
    ) internal pure {
        for (uint256 i; i < nftZap.swaps.length; i++) {
            if (nftZap.swaps[i].amountIn == 0) {
                revert ZeroSwapAmountNotAllowed();
            }
        }
        if (
            nftZap.addLiquidityParams.amount0Desired == 0
                && nftZap.addLiquidityParams.amount1Desired == 0
        ) {
            revert ZeroLiquidityAmountNotAllowed();
        }
    }

    function _bridgeDepositSafe(
        address sickleOwner,
        address token,
        uint256 amount,
        DepositParams memory params
    ) internal returns (bool) {
        try this.bridgeDepositExternal(sickleOwner, token, amount, params) {
            return true;
        } catch {
            uint256 fallbackAmount =
                _transferAvailable(token, sickleOwner, amount);
            emit BridgeDepositFallback(sickleOwner, token, fallbackAmount);
            return false;
        }
    }

    /// @dev External wrapper so _bridgeDepositSafe can use try/catch.
    function bridgeDepositExternal(
        address sickleOwner,
        address token,
        uint256 amount,
        DepositParams calldata params
    ) external {
        if (msg.sender != address(this)) revert OnlySelf();

        Sickle sickle = getOrDeploySickle(sickleOwner, address(0), bytes32(0));

        // Transfer bridged tokens from this contract to the Sickle
        SafeTransferLib.safeTransfer(token, address(sickle), amount);

        _executeDeposit(sickle, token, amount, params);
    }

    function _executeDeposit(
        Sickle sickle,
        address token,
        uint256 amount,
        DepositParams memory params
    ) internal {
        if (
            params.mode == DepositMode.FarmDeposit
                || params.mode == DepositMode.FarmIncrease
        ) {
            _validateZapAmounts(params.zap);
            _executeFarmDeposit(sickle, token, amount, params);
        } else {
            _validateNftZapAmounts(params.nftParams.nftZap);
            _executeNftDeposit(sickle, token, amount, params);
        }
    }

    /// @dev ERC20 farm deposit/increase: fees → zapIn →
    /// farmConnector.deposit
    ///      [→ sweep]
    function _executeFarmDeposit(
        Sickle sickle,
        address token,
        uint256 amount,
        DepositParams memory params
    ) internal {
        uint256 len = params.sweepTokens.length > 0 ? 4 : 3;
        address[] memory targets = new address[](len);
        bytes[] memory data = new bytes[](len);

        targets[0] = address(feesLib);
        data[0] = abi.encodeCall(
            IFeesLib.chargeFee,
            (strategyAddress, BridgeDepositStrategyFees.Deposit, token, amount)
        );

        targets[1] = address(zapLib);
        data[1] = abi.encodeCall(IZapLib.zapIn, (params.zap));

        targets[2] = connectorRegistry.connectorOf(params.farm.stakingContract);
        data[2] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                params.farm,
                params.zap.addLiquidityParams.lpToken,
                params.extraData
            )
        );

        if (params.sweepTokens.length > 0) {
            targets[3] = address(transferLib);
            data[3] = abi.encodeCall(
                ITransferLib.transferTokensToUser, (params.sweepTokens)
            );
        }

        sickle.multicall(targets, data);

        emit BridgeDeposited(
            sickle,
            params.farm.stakingContract,
            params.farm.poolIndex,
            token,
            amount
        );
    }

    /// @dev NFT farm deposit (new) or increase (existing).
    ///      New:      fees → nftZapIn (tokenId=0) → getTokenId →
    ///                nftFarmConnector.depositExistingNft → setNftSettings
    ///                [→ sweep]
    ///      Increase: fees → [withdrawNft] → nftZapIn (tokenId!=0) →
    ///                [depositNft] [→ sweep]
    function _executeNftDeposit(
        Sickle sickle,
        address token,
        uint256 amount,
        DepositParams memory params
    ) internal {
        NftDepositParams memory nft = params.nftParams;

        // Validate mode-specific invariants (mirrors NftFarmStrategy)
        if (params.mode == DepositMode.NftDeposit) {
            if (nft.nftZap.addLiquidityParams.tokenId != 0) {
                revert PleaseUseNftIncrease();
            }
        } else {
            // NftIncrease
            if (nft.nftZap.addLiquidityParams.tokenId == 0) {
                revert PleaseUseNftDeposit();
            }
        }

        // Capture initial supply for NftDeposit invariant check
        INftLiquidityConnector _liqConnector;
        uint256 _initialSupply;
        if (params.mode == DepositMode.NftDeposit) {
            _liqConnector = INftLiquidityConnector(
                connectorRegistry.connectorOf(address(nft.nft))
            );
            _initialSupply = _liqConnector.totalSupply(address(nft.nft));
        }

        // Step 1: charge fees
        {
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = address(feesLib);
            data[0] = abi.encodeCall(
                IFeesLib.chargeFee,
                (
                    strategyAddress,
                    BridgeDepositStrategyFees.Deposit,
                    token,
                    amount
                )
            );
            sickle.multicall(targets, data);
        }

        // Step 2 (increase only, not inPlace): withdraw NFT from farm
        if (params.mode == DepositMode.NftIncrease && !nft.inPlace) {
            address farmConnector =
                connectorRegistry.connectorOf(params.farm.stakingContract);
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = farmConnector;
            data[0] = abi.encodeCall(
                INftFarmConnector.withdrawNft,
                (
                    NftPosition({
                        farm: params.farm, nft: nft.nft, tokenId: nft.tokenId
                    }),
                    nft.nftExtraData
                )
            );
            sickle.multicall(targets, data);
        }

        // Step 3: nftZapIn
        {
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = address(nftZapLib);
            data[0] = abi.encodeCall(INftZapLib.zapIn, (nft.nftZap));
            sickle.multicall(targets, data);
        }

        // Step 4: deposit NFT into farm
        if (params.mode == DepositMode.NftDeposit) {
            // New position: look up the minted tokenId (reuse _liqConnector)
            uint256 tokenId =
                _liqConnector.getTokenId(address(nft.nft), address(sickle));

            NftPosition memory position = NftPosition({
                farm: params.farm, nft: nft.nft, tokenId: tokenId
            });

            address farmConnector =
                connectorRegistry.connectorOf(params.farm.stakingContract);
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = farmConnector;
            data[0] = abi.encodeCall(
                INftFarmConnector.depositExistingNft,
                (position, nft.nftExtraData)
            );
            sickle.multicall(targets, data);

            // Set NFT settings
            {
                address[] memory t2 = new address[](1);
                bytes[] memory d2 = new bytes[](1);
                t2[0] = address(nftSettingsLib);
                d2[0] = abi.encodeCall(
                    INftSettingsLib.setNftSettings,
                    (nftSettingsRegistry, nft.nft, tokenId, nft.settings)
                );
                sickle.multicall(t2, d2);
            }
        } else if (!nft.inPlace) {
            // Increase, not inPlace: re-deposit the NFT
            NftPosition memory position = NftPosition({
                farm: params.farm, nft: nft.nft, tokenId: nft.tokenId
            });

            address farmConnector =
                connectorRegistry.connectorOf(params.farm.stakingContract);
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = farmConnector;
            data[0] = abi.encodeCall(
                INftFarmConnector.depositExistingNft,
                (position, nft.nftExtraData)
            );
            sickle.multicall(targets, data);
        }
        // else: increase inPlace — NFT stays in the farm, nothing to do

        // Step 5: sweep
        if (params.sweepTokens.length > 0) {
            address[] memory targets = new address[](1);
            bytes[] memory data = new bytes[](1);
            targets[0] = address(transferLib);
            data[0] = abi.encodeCall(
                ITransferLib.transferTokensToUser, (params.sweepTokens)
            );
            sickle.multicall(targets, data);
        }

        // Verify NftDeposit created a new position
        if (params.mode == DepositMode.NftDeposit) {
            if (_initialSupply >= _liqConnector.totalSupply(address(nft.nft))) {
                revert NftSupplyDidntIncrease();
            }
        }

        emit BridgeDeposited(
            sickle,
            params.farm.stakingContract,
            params.farm.poolIndex,
            token,
            amount
        );
    }

    function _tokenBalance(
        address token,
        address account
    ) internal view returns (uint256) {
        (bool success, bytes memory data) =
            token.staticcall(abi.encodeWithSelector(0x70a08231, account));
        if (!success || data.length < 32) return 0;
        return abi.decode(data, (uint256));
    }

    function _transferAvailable(
        address token,
        address to,
        uint256 amount
    ) internal returns (uint256 sent) {
        uint256 available = _tokenBalance(token, address(this));
        sent = available < amount ? available : amount;
        if (sent > 0) {
            SafeTransferLib.safeTransfer(token, to, sent);
        }
    }
}
