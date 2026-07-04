// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * # IERC7540Operator
 * @notice Operator approvals used by controllers to delegate claim rights.
 * @dev ERC-165 interface id for this facet: 0xe3bc4e65
 */
interface IERC7540Operator {
    /**
     * @notice Emitted when a controller updates an operator approval.
     * @param controller The controller who set the approval
     * @param operator   The operator address
     * @param approved   New approval status
     */
    event OperatorSet(address indexed controller, address indexed operator, bool approved);

    /**
     * @notice Set or revoke an operator for the caller (the controller).
     * @param operator The operator to set
     * @param approved New approval status
     * @return success True on success
     */
    function setOperator(address operator, bool approved) external returns (bool success);

    /**
     * @notice Check if `operator` is approved by `controller`.
     * @param controller The controller address
     * @param operator   The operator address
     * @return status True if approved
     */
    function isOperator(address controller, address operator) external view returns (bool status);
}

/**
 * # IERC7540Deposit
 * @notice Asynchronous **deposit** request/claim surface.
 * @dev ERC-165 facet id for async‑deposit support: 0xce3bbe50
 *      Implementations MUST also provide the **overloaded** claim methods:
 *      deposit(assets, receiver, controller) and mint(shares, receiver, controller).
 */
interface IERC7540Deposit is IERC7540Operator {
    /**
     * @notice Emitted when a deposit request is submitted.
     * @param controller Controller of the request (controls claims)
     * @param owner      Payer/source of assets
     * @param requestId  Request discriminator (0 allowed; then all requests must be 0)
     * @param sender     Caller of requestDeposit
     * @param assets     Amount of assets requested
     */
    event DepositRequest(
        address indexed controller,
        address indexed owner,
        uint256 indexed requestId,
        address sender,
        uint256 assets
    );

    /**
     * @notice Submit an async deposit request; transfers `assets` from `owner`.
     * @dev MUST emit {DepositRequest}.
     *      MUST revert if full amount cannot be requested.
     *      `owner` MUST equal msg.sender unless `msg.sender` is an approved operator of `owner`.
     * @param assets    Amount of assets to request
     * @param controller Controller that will later claim
     * @param owner     Asset payer
     * @return requestId Request id (may be 0; if any request returns 0 then all must)
     */
    function requestDeposit(
        uint256 assets,
        address controller,
        address owner
    ) external returns (uint256 requestId);

    /**
     * @notice Pending (not yet claimable) deposit assets for `controller` & `requestId`.
     */
    function pendingDepositRequest(
        uint256 requestId,
        address controller
    ) external view returns (uint256 assets);

    /**
     * @notice Claimable deposit assets for `controller` & `requestId`.
     */
    function claimableDepositRequest(
        uint256 requestId,
        address controller
    ) external view returns (uint256 assets);

    /**
     * @notice **Claim** deposit for `controller` by minting shares to `receiver`.
     * @dev MUST revert unless msg.sender == controller or its approved operator.
     *      MUST emit ERC‑4626 {Deposit} with (controller, receiver, assets, shares).
     * @return shares Shares minted to `receiver`.
     */
    function deposit(
        uint256 assets,
        address receiver,
        address controller
    ) external returns (uint256 shares);

    /**
     * @notice **Claim** a precise number of shares for `controller` to `receiver`.
     * @dev MUST revert unless msg.sender == controller or its approved operator.
     * @return assets The assets accounted/consumed from claimable bucket.
     */
    function mint(
        uint256 shares,
        address receiver,
        address controller
    ) external returns (uint256 assets);
}

/**
 * # IERC7540Redeem
 * @notice Asynchronous **redeem** request/claim surface.
 * @dev ERC-165 facet id for async‑redeem support: 0x620ee8e4
 *      Claiming uses standard ERC‑4626 {withdraw}/{redeem} (owner ≙ controller).
 */
interface IERC7540Redeem is IERC7540Operator {
    /**
     * @notice Emitted when a redeem request is submitted.
     * @param controller Controller of the request (controls claims)
     * @param owner      Source of shares
     * @param requestId  Request discriminator (0 allowed; then all requests must be 0)
     * @param sender     Caller of requestRedeem
     * @param shares     Amount of shares requested to redeem
     */
    event RedeemRequest(
        address indexed controller,
        address indexed owner,
        uint256 indexed requestId,
        address sender,
        uint256 shares
    );

    /**
     * @notice Submit an async redeem request; assumes control of/burns `shares` from `owner`.
     * @dev MUST emit {RedeemRequest}.
     *      MUST revert if full amount cannot be requested.
     * @param shares     Amount of shares to request
     * @param controller Controller that will later claim
     * @param owner      Source/owner of shares
     * @return requestId Request id (may be 0; if any request returns 0 then all must)
     */
    function requestRedeem(
        uint256 shares,
        address controller,
        address owner
    ) external returns (uint256 requestId);

    /**
     * @notice Pending (not yet claimable) redeem shares for `controller` & `requestId`.
     */
    function pendingRedeemRequest(
        uint256 requestId,
        address controller
    ) external view returns (uint256 shares);

    /**
     * @notice Claimable redeem shares for `controller` & `requestId`.
     */
    function claimableRedeemRequest(
        uint256 requestId,
        address controller
    ) external view returns (uint256 shares);
}

/**
 * # IERC7540
 * @notice Convenience composite of Deposit & Redeem facets + ERC‑4626 claim surface.
 * @dev MUST support ERC‑165 for:
 *      - 0xe3bc4e65 (operator facet)
 *      - 0x2f0a18c5 (ERC‑7575)
 *      - 0xce3bbe50 (async deposit facet)   — if deposit flow is implemented
 *      - 0x620ee8e4 (async redeem facet)    — if redeem flow is implemented
 * @dev ERC‑7575: implement `share()` in the vault (outside of the interface).
 */
interface IERC7540 is IERC7540Deposit, IERC7540Redeem, IERC4626 {
    error ERC7540InvalidOperator();
    error RequestIdNotClaimable();
    error ZeroShares();
    error ZeroAssets();
    error ZeroAddress();
    error ERC7540ExceededMaxRedeem(address owner, uint256 shares, uint256 maxShares);
    error ERC7540ExceededMaxDeposit(address owner, uint256 assets, uint256 maxAssets);
}
