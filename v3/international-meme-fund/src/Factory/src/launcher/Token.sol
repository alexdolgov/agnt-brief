// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import { IBondingCurve } from "./interfaces/IBondingCurve.sol";
import { IFactory } from "./interfaces/IFactory.sol";
import { IToken } from "./interfaces/IToken.sol";

/// @dev Single function used on the canonical ENS Reverse Registrar
///      (`addr.reverse` namespace owner). `setName` claims `<msg.sender>.addr.reverse`,
///      attaches a default reverse resolver, and writes the name record in one call.
interface IReverseRegistrar {
    function setName(string calldata name) external returns (bytes32);
}

/// @title  Token
/// @notice Fixed-supply ERC20 with EIP-2612 permit, ERC-7572 metadata URI, and a
///         pre-graduation transfer lock. The bonding-curve address comes from a factory
///         handshake — read at construction via `IFactory(msg.sender).pendingCurve()` —
///         keeping the token's CREATE2 init-code hash independent of the curve and so
///         vanity-mineable.
contract Token is ERC20, ERC20Permit, IToken {
    error ZeroAddress();
    error InvalidMetadataLength();
    error InvalidMetadataChar();
    error TransfersLocked();
    error OnlyBondingCurve();
    error OnlyCreator();
    error AlreadyGraduated();
    error MissingCurveHandshake();
    error EnsReverseAlreadySet();
    error EmptyName();

    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 * 1e18;
    uint256 public constant MAX_METADATA_URI_LEN = 512;
    uint256 public constant MAX_ENS_NAME_LEN = 255;

    /// @notice Canonical mainnet ENS Reverse Registrar
    ///         (owner of `namehash("addr.reverse")` on the ENS Registry). Hard-coded
    ///         because the address is part of the protocol's external surface; deploying
    ///         on a different chain would require a different fork/redeploy of this
    ///         contract.
    address public constant ENS_REVERSE_REGISTRAR = 0xa58E81fe9b61B5c3fE2AFD33CF304c454AbFc7Cb;

    /// @notice Single-shot guard for {setEnsReverseName}.
    /// @inheritdoc IToken
    bool public override ensReverseSet;

    /// @notice Emitted exactly once when the token's reverse ENS name is claimed — by
    ///         the current creator directly or by the factory's authorized deployer
    ///         proxy during an atomic deploy.
    event EnsReverseNameSet(string name);

    /// @inheritdoc IToken
    address public immutable override bondingCurve;
    /// @inheritdoc IToken
    address public immutable override factory;
    /// @inheritdoc IToken
    bool public override graduated;

    /// @inheritdoc IToken
    /// @dev ERC-7572. Set once via the factory handshake; no setter exists.
    string public override contractURI;

    /// @param name_    Length ∈ [1, 32]; rejects ASCII control characters to defend block
    ///                 explorers that render the name verbatim.
    /// @param symbol_  Length ∈ [1, 10]; same charset rule.
    /// @param factory_ Must equal `msg.sender`. Provides the bonding-curve and metadata-URI
    ///                 values via storage handshake.
    constructor(string memory name_, string memory symbol_, address factory_) ERC20(name_, symbol_) ERC20Permit(name_) {
        if (factory_ == address(0)) revert ZeroAddress();
        if (factory_ != msg.sender) revert MissingCurveHandshake();
        _validateMetadata(bytes(name_), 32);
        _validateMetadata(bytes(symbol_), 10);

        address curve = IFactory(factory_).pendingCurve();
        if (curve == address(0)) revert MissingCurveHandshake();

        bondingCurve = curve;
        factory = factory_;

        // Empty URI is allowed (opt-out); length is bounded to limit deploy gas + storage.
        string memory uri = IFactory(factory_).pendingURI();
        if (bytes(uri).length > MAX_METADATA_URI_LEN) revert InvalidMetadataLength();
        contractURI = uri;

        _mint(curve, TOTAL_SUPPLY);
    }

    /// @inheritdoc IToken
    function creator() external view override returns (address) {
        return IBondingCurve(bondingCurve).CREATOR();
    }

    /// @inheritdoc IToken
    function finalizeGraduation() external override {
        if (msg.sender != bondingCurve) revert OnlyBondingCurve();
        if (graduated) revert AlreadyGraduated();
        graduated = true;
    }

    /// @dev Pre-graduation, only transfers involving the bonding curve are allowed.
    ///      Mints (`from == 0`) and burns (`to == 0`) always pass.
    function _update(address from, address to, uint256 value) internal override {
        if (!graduated && from != address(0) && to != address(0)) {
            if (from != bondingCurve && to != bondingCurve) revert TransfersLocked();
        }
        super._update(from, to, value);
    }

    function _validateMetadata(bytes memory s, uint256 maxLen) private pure {
        uint256 len = s.length;
        if (len == 0 || len > maxLen) revert InvalidMetadataLength();
        for (uint256 i = 0; i < len; ++i) {
            uint8 c = uint8(s[i]);
            if (c < 0x20 || c == 0x7F) revert InvalidMetadataChar();
        }
    }

    /// @inheritdoc IToken
    /// @dev Security model:
    ///        - Single-shot (`ensReverseSet` flag), so a rotated creator cannot churn
    ///          the displayed name. Once set, frozen forever.
    ///        - Two authorized principals: the *current* creator per
    ///          {IBondingCurve.CREATOR}, OR the factory's currently-registered
    ///          `deployerProxy` (`IFactory.deployerProxy()`). The proxy path enables
    ///          atomic forward-and-reverse registration inside a single deploy tx; the
    ///          creator path remains for direct claims outside the proxy flow.
    ///        - The reverse record is, by ENS protocol, `<this token's address>.addr.reverse`.
    ///          Setting it does NOT make `name` automatically resolve to this token —
    ///          ENS-aware wallets validate that the FORWARD `addr(node)` lookup of `name`
    ///          points back to this address before displaying it. So a creator (or proxy)
    ///          setting a misleading name (e.g. "vitalik.eth") cannot impersonate;
    ///          reverse-without-forward-validation is filtered out at the wallet layer.
    ///        - Bounded length so the call cannot grief downstream `name()` readers
    ///          with an unbounded string.
    function setEnsReverseName(string calldata name) external override {
        address proxy = IFactory(factory).deployerProxy();
        bool isCreator = msg.sender == IBondingCurve(bondingCurve).CREATOR();
        bool isProxy = proxy != address(0) && msg.sender == proxy;
        if (!isCreator && !isProxy) revert OnlyCreator();
        if (ensReverseSet) revert EnsReverseAlreadySet();
        uint256 len = bytes(name).length;
        if (len == 0) revert EmptyName();
        if (len > MAX_ENS_NAME_LEN) revert InvalidMetadataLength();

        ensReverseSet = true;
        IReverseRegistrar(ENS_REVERSE_REGISTRAR).setName(name);
        emit EnsReverseNameSet(name);
    }
}
