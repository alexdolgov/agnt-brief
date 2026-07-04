// SPDX-License-Identifier: GNU GPLv3

pragma solidity 0.8.19;

import "./interfaces/IControl.sol";

import "./utils/Context.sol";

contract ControlResolver is Context {

    /* ========== STATE VARIABLES ========== */

    /// @dev Fixed time duration variables.
    uint128 private constant FOUR_HOURS_TIME = 14400;
    uint128 private constant FIVE_MINUTES_TIME = 300;

    /// @dev Fixed price values.
    uint256 private constant PRICE_UPPER_BOUND = 1.02 * 1e18;
    uint256 private constant PRICE_LOWER_BOUND = 0.98 * 1e18;

    /// @notice The address of the main logic contract.
    IControl public CONTROL;

    /// @dev Initialization variables.
    address private immutable _initializer;
    bool private _isInitialized;

    /* ========== CONSTRUCTOR ========== */

    constructor() {
        _initializer = _msgSender();
    }

    /* ========== INITIALIZE ========== */

    /**
     * @notice Initializes external dependencies and state variables.
     * @dev This function can only be called once.
     * @param control_ The address of the `Control` contract.
     */
    function initialize(address control_) external {
        require(_msgSender() == _initializer, "ControlResolver: caller is not the initializer");
        require(!_isInitialized, "ControlResolver: already initialized");

        require(control_ != address(0), "ControlResolver: invalid Control address");
        CONTROL = IControl(control_);

        _isInitialized = true;
    }

    /* ========== FUNCTIONS ========== */

    /**
     * @notice Called by ops to check execution status.
     */
    function checker() external view returns (bool canExec, bytes memory execPayload) {
        uint256 price = CONTROL.getCurrentPrice();

        uint256 mintProgressCount = CONTROL.mintProgressCount();
        uint256 redeemProgressCount = CONTROL.redeemProgressCount();
        uint256 lastExecutedMint = CONTROL.lastExecutedMint();
        uint256 lastExecutedRedeem = CONTROL.lastExecutedRedeem();

        /// @dev Block seperation for Mint
        {
            bool canMint = block.timestamp > lastExecutedMint + FOUR_HOURS_TIME;
            bool canMintForProgression = mintProgressCount > 0.1 * 1e18 && block.timestamp > lastExecutedMint + FIVE_MINUTES_TIME;

            if (price > PRICE_UPPER_BOUND && (canMint || canMintForProgression)) {
                execPayload = abi.encodeCall(IControl.execute, (0));
                return (true, execPayload);
            }
        }
        /// @dev Block seperation for Redeem
        {
            bool canRedeem = block.timestamp > lastExecutedRedeem + FOUR_HOURS_TIME;
            bool canRedeemForProgression = redeemProgressCount > 0.1 * 1e18 && block.timestamp > lastExecutedRedeem + FIVE_MINUTES_TIME;

            if (price < PRICE_LOWER_BOUND && (canRedeem || canRedeemForProgression)) {
                execPayload = abi.encodeCall(IControl.execute, (1));
                return (true, execPayload);
            }
        }

        // canExec = false;
        execPayload = abi.encodePacked(
            "Price: ",
            price,
            ", Mint's Last Execution Time: ",
            lastExecutedMint,
            ", Mint's Progress Count: ",
            mintProgressCount,
            ", Redeem's Last Execution Time: ",
            lastExecutedRedeem,
            ", Redeem's Progress Count: ",
            redeemProgressCount
        );
    }
}