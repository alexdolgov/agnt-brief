// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IPortal, IPortalCore, IPortalTypes} from "./interfaces/IPortal.sol";
import {IToken} from "./interfaces/IToken.sol";
import {ITokenV2} from "./interfaces/ITokenV2.sol";
import {ClonesUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import {AddressUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/AddressUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ECDSAUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import {LibCurve} from "./libraries/Curve.sol";
import {IUniswapV3Factory} from "uni-v3-core/interfaces/IUniswapV3Factory.sol";
import {IUniswapV2Factory} from "uni-v2-core/interfaces/IUniswapV2Factory.sol";
import {IUniswapV3Pool} from "uni-v3-core/interfaces/IUniswapV3Pool.sol";
import {IUniswapV2Pair} from "uni-v2-core/interfaces/IUniswapV2Pair.sol";
import {IPancakeV3Factory} from "./interfaces/3rd/IPancakeV3Factory.sol";
import {PoolAddress} from "./libraries/poolAddress.sol";

/// @title  The Portal Base contract
/// @notice Including Storage Definitions and Shared Functions
contract PortalBase is IPortalTypes, AccessControlUpgradeable {
    /// internal states

    /// @dev packed token state (@deprecated)
    struct PackedTokenStateLegacy {
        TokenStatus status; // 8bit: the status of the token
        CurveType curveType; // 8bit: The curve type of the token
        DexThreshType dexThreshType; // 8bit: The dex threshold type of the token
        uint32 id; // 32bit: the id of the token
        uint96 reserve; // 96bit: the current reserve of the token
        uint96 dirtyOrCirculatingSupply; // 96bit: this is the circulating supply of the token, if the token version is at least V2
            // or this may be legacy dirty data.
        TokenVersion tokenVersion; // 8bit: the implementation this token is using
    }

    /// @dev the magic header to distinguish between the legacy packed token state and the new packed token state
    uint8 internal constant PACKED_TOKEN_STATE_HEADER = 0xff;

    /// @dev pacake token state v2
    struct PackedTokenStateV2 {
        //
        // slot0: header + status + immutable data
        //
        uint8 header;
        // 8bit: The header is always 0xff or it is the legacy PackedTokenState
        TokenStatus status; // 8bit: the status of the token
        CurveType curveType; // 8bit: The curve type of the token
        DexThreshType dexThreshType; // 8bit: The dex threshold type of the token
        uint32 id; // 32bit: the id of the token
        TokenVersion tokenVersion; // 8bit: the implementation this token is using
        QuoteTokenType quoteToken; // 8bit: the quote token type of the token
        MigratorType migratorType; // 8bit: the migrator type of the token
        uint168 unused; // 168bit: reserved for future use
        //
        // slot1: reserve + circulating supply
        //
        uint128 reserve;
        // 128bit: the current reserve of the token
        uint128 circulatingSupply; // 128bit: the current circulating supply of the token
        //
        // slot2: the quote token address of the token
        uint96 unused2; // 96bit: reserved for future use
        address quoteTokenAddress;
    }

    // bit mask for bit flags

    /// The bit mask for the global switch , if off, all functions are disabled
    uint256 internal constant CB_BIT_MASK_GLOBAL_SWITCH = 1;
    /// The bit mask for the trade feature (bit 1)
    uint256 internal constant CB_BIT_MASK_TRADE = 2;

    /// guardian role
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");

    // max supply of the token
    uint256 internal constant maxSupply = 1e9 ether;

    // Immutables

    //
    // The token implementations
    //

    /// @dev The implementation for
    ///      TOKEN_LEGACY_MINT_NO_PERMIT & TOKEN_LEGACY_MINT_NO_PERMIT_DUPLICATE
    IToken internal immutable tokenImplLegacy;

    /// @dev The implementation for TOKEN_V2_PERMIT
    ITokenV2 internal immutable tokenImplV2;

    /// @dev The implementation for TOKEN_GOPLUS (pending)
    address internal immutable tokenImplGoPlus = address(0);

    /// @dev The implementation for TOKEN_TAXED
    address internal immutable tokenImplTaxed;

    /// @dev The implementation for TaxSplitter
    address internal immutable taxSplitterImpl;

    /// Fee receiver
    address internal immutable FEE_RECEIVER;

    //
    //  Facets
    //

    /// @dev Migrator: The address of the migrator contract
    /// The migrator contract is used to migrate the tokens from bonding curve to Uniswap V3 DEX
    address internal immutable PORTAL_UNIV3_MIGRATOR;

    /// @dev TaxTokenMigrator: The address of the migrator contract
    /// This migrator contract is used to migrate the tax tokens from bonding curve to Uniswap V2 DEX
    address internal immutable PORTAL_UNIV2_MIGRATOR;

    /// @dev The Token Launcher contract address
    address internal immutable PORTAL_LAUNCHER;

    /// @dev The Token Trade contract address
    address internal immutable PORTAL_TRADE;

    /// @dev The Token Trade V2 contract address
    address internal immutable PORTAL_TRADE_V2;

    /// @dev The Portal Roller Contract Address
    address internal immutable PORTAL_ROLLER;

    //
    // DEX Related immutables
    //

    /// @dev The expected uni v3 pool fee, this also decides the tickSpacing of the pool
    /// This is the preferred fee for Uniswap v3
    uint24 internal immutable UNIV3_FAVORED_FEE;

    /// @dev The uni v3 pool factory
    IUniswapV3Factory internal immutable V3_FACTORY;

    /// @dev the uni v3 deployer
    /// For Uniswap v3, this is the same as v3Factory;
    /// But for pancakeswap, the deployer is different from the factory
    address internal immutable V3_DEPLOYER;

    /// @dev The uni v3 pool init code hash
    bytes32 internal immutable UNIV3_POOL_INIT_CODE_HASH;

    /// @dev The uni v2 pool factory
    IUniswapV2Factory internal immutable V2_FACTORY;

    /// @dev The uni v2 pool init code hash
    bytes32 internal immutable UNIV2_POOL_INIT_CODE_HASH;

    /// @dev The address of WETH
    address internal immutable WETH_ADDRESS;

    /// @dev is Algebra 1.9
    bool internal immutable IS_ALGEBRA_1_9;

    //
    // misc
    //

    //
    // internal states
    //

    /// A _nonce used as the seed for creating new token
    /// @dev slot 151
    uint256 internal _nonce;

    /// @dev mapping from tokenAddress To PackedTokenState or PackedTokenStateV2
    /// This could be either mapping(address => PackedTokenStateLegacy) or mapping(address => PackedTokenStateV2)
    /// check _getTokenState for more details.
    /// slot: 152
    mapping(address => uint256) internal _packedTokenStates;

    /// @dev previously slots for the game feature:
    ///      slots: [153,158]
    uint256[6] private _gap00000;

    /// @dev @obsolete redeem rates in WAD for killed tokens, src token => dst Token => rate
    /// slot: 159
    mapping(address srcToken => mapping(address dstToken => uint256)) internal redeemRates;

    /// @dev bit flags
    /// slot: 160
    uint256 internal bitFlags;

    /// @dev obsolete slots:
    ///   - 2 slots: the game.GameConfig
    ///   - 1 slot: whitelist feature
    ///   - 1 slot: obsolete check-in data (mapping(address => uint256))
    uint256[4] private _gap00001;

    struct PackedLPLocks {
        uint64[2] locks;
    }
    // the remaining 128 bits are reserved for future use

    /// @dev mapping from token to locks
    /// slot: 165
    mapping(address => PackedLPLocks) internal lpLocks;

    /// @dev
    /// obsolete slots:
    ///   - 1 slot: obsolete existingMetas (mapping(bytes32 => bool))
    ///   - 1 slot: obsolete number of tokens created by each user (mapping(address => uint256))
    ///   - 1 slot: obsolete mapping to track users exempted from creation fee (mapping(address => bool))
    uint256[3] private _gap00002;

    /// @dev mapping from token to beneficiary, slot: 169
    mapping(address => address) internal _tokenBeneficiaries;

    /// @dev mapping from allowed quote token address to the configuration
    mapping(address => QuoteTokenConfiguration) internal _quoteTokenConfigurations;

    /// @dev The init params for the portal
    struct PortalInitParams {
        //
        // base parameters
        //

        /// The Token Launcher implementation
        address tokenLauncher_;
        /// The Token Trade implementation
        address tokenTrade_;
        /// The Token Trade V2 implementation
        address tokenTradeV2_;
        /// The Roller implementation
        address roller_;
        /// migrator for uniswap v3
        address uniV3Migrator_;
        /// migrator for uniswap v2
        address uniV2Migrator_;
        /// TaxSplitter implementation address
        address taxSplitterImpl_;
        /// The legacy token implementation
        address tokenImpl_;
        /// The V2 token implementation
        address tokenImplV2_;
        /// The goPlus token implementation
        address goPlusTokenImpl_;
        /// The tax token implementation
        address tokenImplTaxed_;
        /// The fee receiver
        address feeReceiver_;
        //
        // Shared by Trade and Launcher
        //

        /// The default DEX threshold type
        DexThreshType defaultDexThreshType_;
        /// The default curve type
        CurveType defaultCurveType_;
        /// The default token version
        TokenVersion defaultTokenVersion_;
        //
        // Trade Exclusive
        //

        /// The fee rate
        uint256 feeRate_;
        //
        // Migrator Related
        //

        /// The V2 factory
        address v2Factory_;
        /// The V2 init code hash
        bytes32 v2InitCodeHash_;
        /// The v3 factory
        address v3Factory_;
        /// The v3 init code hash
        bytes32 v3InitCodeHash_;
        /// The WETH address
        address weth_;
        /// v3 favored fee tier
        uint24 v3fee_;
        /// is pancake
        bool isPancake_;
        /// is Algebra 1.9
        bool isAlgebra1_9;
        /// v3 non fungible position manager
        address _v3NonfungiblePositionManager;
        /// uncx locker  (p3, if not zero address)
        address _uncxLiquidityLocker;
        /// goplus locker  (p2, if not zero address)
        address _goplusLocker;
        /// toshi locker  (p1, if not zero address)
        address _toshiLocker;
        /// izi locker  (p0, if not zero address)
        address _iziLocker;
        //
        // (optional) nativeToQuoteSwap Related for PortalTradeV2
        //

        /// The address of the SmartRouter (i.e Uniswap SwapRouter02) address
        address smartRouter_;
        /// The address of the V3Quoter address
        address v3Quoter_;
        /// The address of the V2Router address
        address v2Router_;
    }

    constructor(PortalInitParams memory params) {
        // TODO: Size optimization: We can move some immutables (e.g UNIV3_POOL_INIT_CODE_HASH) out of PortalBase

        // init facets
        PORTAL_UNIV3_MIGRATOR = params.uniV3Migrator_;
        PORTAL_UNIV2_MIGRATOR = params.uniV2Migrator_;
        PORTAL_LAUNCHER = params.tokenLauncher_;
        PORTAL_TRADE = params.tokenTrade_;
        PORTAL_TRADE_V2 = params.tokenTradeV2_;
        PORTAL_ROLLER = params.roller_;

        V2_FACTORY = IUniswapV2Factory(params.v2Factory_);
        UNIV2_POOL_INIT_CODE_HASH = params.v2InitCodeHash_;

        // For some chain (e.g, Zeta), the Uniswap V3 may not be available.
        // Using a zero address for the factory would disable the Uniswap V3 support.

        V3_FACTORY = IUniswapV3Factory(params.v3Factory_);
        UNIV3_POOL_INIT_CODE_HASH = params.v3InitCodeHash_;
        WETH_ADDRESS = params.weth_;
        UNIV3_FAVORED_FEE = params.v3fee_;

        if (address(V3_FACTORY) != address(0)) {
            if (params.isPancake_ || params.isAlgebra1_9) {
                // In pancake v3 & Algebra 1.9, the factory and the deployer are two distinct addresses.
                // And the pool address is derived from the deployer address:
                // https://github.com/pancakeswap/pancake-v3-contracts/blob/5cc479f0c5a98966c74d94700057b8c3ca629afd/projects/v3-core/contracts/PancakeV3Factory.sol#L75
                //
                V3_DEPLOYER = IPancakeV3Factory(params.v3Factory_).poolDeployer();
            } else {
                V3_DEPLOYER = address(params.v3Factory_);
            }
        }

        // validation: cannot be pancake and algebra 1.9 at the same time
        if (params.isPancake_ && params.isAlgebra1_9) {
            revert DEXCannotBeBothPancakeAndAlgebra1_9();
        }

        IS_ALGEBRA_1_9 = params.isAlgebra1_9;
        tokenImplLegacy = IToken(params.tokenImpl_);
        tokenImplV2 = ITokenV2(params.tokenImplV2_);
        FEE_RECEIVER = params.feeReceiver_;
        // Add tax token implementation and migrator
        tokenImplTaxed = params.tokenImplTaxed_;
        taxSplitterImpl = params.taxSplitterImpl_;
    }

    /// @dev get curve by type
    function _curveByType(CurveType curveType) internal pure returns (LibCurve.Curve) {
        if (curveType == CurveType.CURVE_LEGACY_15) {
            // BSC Legacy
            return LibCurve.Curve.wrap(15 ether);
        } else if (curveType == CurveType.CURVE_4) {
            // BSC Legacy
            return LibCurve.Curve.wrap(4 ether);
        } else if (curveType == CurveType.CURVE_0_974) {
            // MONAD TESTNET
            return LibCurve.Curve.wrap(0.974 ether);
        } else if (curveType == CurveType.CURVE_0_5) {
            // BASE/MORPH
            return LibCurve.Curve.wrap(0.5 ether);
        } else if (curveType == CurveType.CURVE_20000) {
            // GRAVITY
            return LibCurve.Curve.wrap(20000 ether);
        } else if (curveType == CurveType.CURVE_2500) {
            // ZETA
            return LibCurve.Curve.wrap(2500 ether);
        } else if (curveType == CurveType.CURVE_2) {
            // BSC Latest
            return LibCurve.Curve.wrap(2 ether);
        } else if (curveType == CurveType.CURVE_6) {
            // BSC Tax Token
            return LibCurve.Curve.wrap(6 ether);
        } else {
            return LibCurve.Curve.wrap(0);
        }
    }

    /// @dev get dex threshold by dex thresh type
    function _dexThresholdByType(DexThreshType dexThreshType) internal pure returns (uint256) {
        if (dexThreshType == DexThreshType.TWO_THIRDS) {
            return 6.67e8 ether;
        } else if (dexThreshType == DexThreshType.FOUR_FIFTHS) {
            return 8e8 ether;
        } else if (dexThreshType == DexThreshType.HALF) {
            return 5e8 ether;
        } else if (dexThreshType == DexThreshType._95_PERCENT) {
            return 9.5e8 ether;
        } else if (dexThreshType == DexThreshType._81_PERCENT) {
            return 8.1e8 ether;
        } else if (dexThreshType == DexThreshType._1_PERCENT) {
            return 0.1e8 ether;
        } else {
            // invalid return 0
            return 0;
        }
    }

    /// @notice Modifier to check if the given bit mask is enabled in bitFlags
    modifier onlyIfBitFlagsSet(uint256 mask) {
        if (!_checkBitFlags(mask)) revert FeatureDisabled();
        _;
    }

    /// @dev check bit flags
    /// If a bit is off, means the feature is disabled
    function _checkBitFlags(uint256 mask) internal view returns (bool) {
        // We only check the bits in the mask are set
        // And ignore the bits that are not in the mask
        //
        //  -  mask => with only checking bits set
        //  -  mask ^ bitFlags =>
        //          XOR: all checking bits should be unset, if
        //          they are set in the bitFlags.
        //  - _ & mask, ignore the bits that are not in the mask
        //
        return (mask ^ bitFlags) & mask == 0;
    }

    /// @dev _revert with returnData
    function _revert(bytes memory returndata) internal pure {
        if (returndata.length > 0) {
            assembly ("memory-safe") {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert CallReverted();
        }
    }

    //
    // token related
    // for different version of token, the behavior is different
    //

    /// @dev get the circulating supply of a token
    /// @param state the current state of a token
    /// @param token the address of the token
    /// @return the circulating supply of the token
    function _circulatingSupply(PackedTokenStateV2 memory state, address token) internal view returns (uint256) {
        if (
            state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT
                || state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT_DUPLICATE
        ) {
            return IToken(token).totalSupply();
        } else if (state.tokenVersion == TokenVersion.TOKEN_V2_PERMIT || state.tokenVersion == TokenVersion.TOKEN_TAXED)
        {
            return uint256(state.circulatingSupply);
        } else {
            revert NotImplemented();
        }
    }

    /// @dev mint token:
    ///    for tokenVersion < V2, we mint the token through the token contract
    ///    for tokenVersion >= V2, we transfer token from this contract to the recipient
    /// @dev Note! this function changes the state of the token
    function _mintToken(address token, uint256 amount, address recipient) internal {
        PackedTokenStateV2 memory state = _getTokenState(token);

        if (
            state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT
                || state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT_DUPLICATE
        ) {
            IToken(token).mint(recipient, amount);
            state.circulatingSupply = uint96(IToken(token).totalSupply());
        } else if (state.tokenVersion == TokenVersion.TOKEN_V2_PERMIT || state.tokenVersion == TokenVersion.TOKEN_TAXED)
        {
            ITokenV2(token).transfer(recipient, amount);
            state.circulatingSupply += uint96(amount);
        } else {
            revert NotImplemented();
        }

        // flush state
        _setTokenCirculatingSupply(token, state.circulatingSupply);

        // emit circulation update
        emit FlapTokenCirculatingSupplyChanged(token, uint256(state.circulatingSupply));
    }

    /// @dev "burn" token
    ///    for tokenVersion < V2, we burn the token through the token contract
    ///    for tokenVersion >= V2, we transfer token from the payer to this contract
    function _burnToken(address token, uint256 amount, address payer) internal {
        PackedTokenStateV2 memory state = _getTokenState(token);

        if (
            state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT
                || state.tokenVersion == TokenVersion.TOKEN_LEGACY_MINT_NO_PERMIT_DUPLICATE
        ) {
            IToken(token).burn(payer, amount);
            state.circulatingSupply = uint128(IToken(token).totalSupply());
        } else if (state.tokenVersion == TokenVersion.TOKEN_V2_PERMIT || state.tokenVersion == TokenVersion.TOKEN_TAXED)
        {
            // gas saving if the token has already been transferred to this contract before calling _burnToken
            // we don't need to do a self transfer in this case.
            if (payer != address(this)) {
                ITokenV2(token).transferFrom(payer, address(this), amount);
            }
            state.circulatingSupply -= uint128(amount);
        } else {
            revert NotImplemented();
        }

        // flush state
        _setTokenCirculatingSupply(token, state.circulatingSupply);
        // emit circulation update
        emit FlapTokenCirculatingSupplyChanged(token, uint256(state.circulatingSupply));
    }

    /// @dev erase token: erase unused token that is more than the expected circulating supply
    ///   The amount of token erased cannot be minted again.
    ///   for tokenVersion < V2, we do nothing, because they are never minted
    ///   for tokenVersion >= V2, we transfer token from this contract to dead address
    function _eraseToken(address token, uint256 amount) internal {
        PackedTokenStateV2 memory state = _getTokenState(token);

        // Note! this does not change the circulating supply

        if (state.tokenVersion >= TokenVersion.TOKEN_V2_PERMIT) {
            ITokenV2(token).transfer(address(0x000000000000000000000000000000000000dEaD), amount);
        }
    }

    /**
     * @dev Delegates the current call to the specified implementation contract.
     * Uses `delegatecall` to forward the call, preserving the caller's context.
     * Reverts if the delegatecall fails.
     * @param impl The address of the implementation contract to delegate the call to.
     */
    function _delegateToImpl(address impl) internal {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), impl, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    /// @dev Returns the PackedTokenStateV2 for a given token address.
    /// If the stored state is legacy, it converts it to V2 struct.
    function _getTokenState(address token) internal view returns (PackedTokenStateV2 memory state) {
        uint256 packed;
        uint256 slot;
        assembly ("memory-safe") {
            mstore(0x0, token)
            mstore(0x20, _packedTokenStates.slot)
            slot := keccak256(0x0, 0x40)
            packed := sload(slot)
        }

        uint8 header = uint8(packed);
        if (header != PACKED_TOKEN_STATE_HEADER) {
            // Legacy: manually parse fields from packed uint256 (lower-order aligned)
            state.header = PACKED_TOKEN_STATE_HEADER;
            state.status = TokenStatus(uint8(packed));
            state.curveType = CurveType(uint8(packed >> 8));
            state.dexThreshType = DexThreshType(uint8(packed >> 16));
            state.id = uint32(packed >> 24);
            state.reserve = uint128(uint96(packed >> 56));
            state.circulatingSupply = uint128(uint96(packed >> 152));
            state.tokenVersion = TokenVersion(uint8(packed >> 248));
            state.quoteToken = QuoteTokenType.NATIVE_GAS_TOKEN;
        } else {
            // parse slot0
            state.header = uint8(packed);
            state.status = TokenStatus(uint8(packed >> 8));
            state.curveType = CurveType(uint8(packed >> 16));
            state.dexThreshType = DexThreshType(uint8(packed >> 24));
            state.id = uint32(packed >> 32);
            state.tokenVersion = TokenVersion(uint8(packed >> 64));
            state.quoteToken = QuoteTokenType(uint8(packed >> 72));
            state.migratorType = MigratorType(uint8(packed >> 80));
            state.unused = uint168(packed >> 88);

            // read slot1
            uint256 slotValue;
            assembly ("memory-safe") {
                slotValue := sload(add(slot, 1))
            }
            state.reserve = uint128(slotValue);
            state.circulatingSupply = uint128(slotValue >> 128);

            // gas saving: only read slot2 if state.tokenVersion is not NATIVE_GAS_TOKEN
            if (state.quoteToken != QuoteTokenType.NATIVE_GAS_TOKEN) {
                // read slot2
                uint256 slot2Value;
                assembly ("memory-safe") {
                    slot2Value := sload(add(slot, 2))
                }
                state.quoteTokenAddress = address(uint160(slot2Value));
            }
        }
    }

    /// @dev set the token status
    function _setTokenStatus(address token, TokenStatus status) internal {
        uint256 slot;
        assembly ("memory-safe") {
            mstore(0x0, token)
            mstore(0x20, _packedTokenStates.slot)
            slot := keccak256(0x0, 0x40)
        }
        uint256 packed;
        assembly ("memory-safe") {
            packed := sload(slot)
        }
        uint8 header = uint8(packed);
        if (header != PACKED_TOKEN_STATE_HEADER) {
            packed = (packed & ~uint256(0xff)) | uint8(status);
            assembly ("memory-safe") {
                sstore(slot, packed)
            }
        } else {
            packed = (packed & ~(uint256(0xff) << 8)) | (uint256(uint8(status)) << 8);
            assembly ("memory-safe") {
                sstore(slot, packed)
            }
        }
    }

    /// @dev set the token reserve
    function _setTokenReserve(address token, uint128 reserve) internal {
        uint256 slot;
        assembly ("memory-safe") {
            mstore(0x0, token)
            mstore(0x20, _packedTokenStates.slot)
            slot := keccak256(0x0, 0x40)
        }
        uint256 packed;
        assembly ("memory-safe") {
            packed := sload(slot)
        }
        uint8 header = uint8(packed);
        if (header != PACKED_TOKEN_STATE_HEADER) {
            packed = (packed & ~(uint256(type(uint96).max) << 56)) | (uint256(uint96(reserve)) << 56);
            assembly ("memory-safe") {
                sstore(slot, packed)
            }
        } else {
            uint256 slot1 = slot + 1;
            uint256 slot1val;
            assembly ("memory-safe") {
                slot1val := sload(slot1)
            }
            slot1val = (slot1val & ~uint256(type(uint128).max)) | uint256(reserve);
            assembly ("memory-safe") {
                sstore(slot1, slot1val)
            }
        }
    }

    /// @dev set the token circulating supply
    function _setTokenCirculatingSupply(address token, uint128 circulatingSupply) internal {
        uint256 slot;
        assembly ("memory-safe") {
            mstore(0x0, token)
            mstore(0x20, _packedTokenStates.slot)
            slot := keccak256(0x0, 0x40)
        }
        uint256 packed;
        assembly ("memory-safe") {
            packed := sload(slot)
        }
        uint8 header = uint8(packed);
        if (header != PACKED_TOKEN_STATE_HEADER) {
            packed = (packed & ~(uint256(type(uint96).max) << 152)) | (uint256(uint96(circulatingSupply)) << 152);
            assembly ("memory-safe") {
                sstore(slot, packed)
            }
        } else {
            uint256 slot1 = slot + 1;
            uint256 slot1val;
            assembly ("memory-safe") {
                slot1val := sload(slot1)
            }
            slot1val = (slot1val & ~(uint256(type(uint128).max) << 128)) | (uint256(circulatingSupply) << 128);
            assembly ("memory-safe") {
                sstore(slot1, slot1val)
            }
        }
    }
}
