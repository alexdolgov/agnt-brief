pragma solidity ^0.8.0;

import "../lib/BondCommitStruct.sol";

interface IPositionBondCommit {
    event BondCreated(
        string bondName,
        string bondSymbol,
        address underlyingAsset,
        uint256 collateralAmount,
        address faceAsset,
        uint256 faceValue,
        uint256 totalSupply
    );
    event BondCommitActivated(
        uint64 commit,
        uint64 distribution,
        uint64 active,
        uint64 maturity
    );
    event Committed(address user, uint256 amountCommitted);
    event Distributed(address user, uint256 bondAmount);
    event SoldAmountClaimed(address issuer, uint256 amount);
    event Liquidated(address user);
    event IssuePriceInitialized(uint256 issuePrice);

    /// @notice When the bond is pending, Issuer active the bond by transferring the underlying asset
    /// and call active function
    /// @dev Implement this function in PositionBond
    /// @param _commit unix timestamp sale date
    /// @param _distribution unix timestamp sale date
    /// @param _active unix timestamp active date
    /// @param _maturity unix timestamp maturity date
    /**
     * Requirements:
     *
     * - Caller must be the issuer
     * - Only when the underlying asset is not deposited
     * - _commit < _distribution < _active < _maturity
     */
    function active(
        uint64 _commit,
        uint64 _distribution,
        uint64 _active,
        uint64 _maturity
    ) external;

    /// @notice When the bond is commit time, trader can commit BUSD
    /// @dev  only the bond is commit
    function commit(uint256 amount) external;

    /// @notice When the bond is distribution time, trader can claim bond
    /// @dev  only the bond is die
    function claimBond() external;

    function amountCommitted(address _trader)
        external
        view
        returns (BondCommitStruct.BondCommitted memory);

    function distributionAmount(address _trader)
        external
        view
        returns (uint256);

    /// @notice When the bond is matured, Issuer claim underlying asset
    /// @dev check only issuer, only the bond is matured
    /**
     * Requirements:
     *
     * - Caller must be the issuer
     * - Only Matured
     * - Only issuer pay back the face value
     */
    function claimUnderlyingAsset() external;

    /// @notice When the bond is matured, and liquidated every user can claim underlying asset
    /// @dev check the bond is liquidated
    function claimLiquidatedUnderlyingAsset() external;

    /// @notice When the bond is active, issuer need claim the sold amount
    /// Requirements:
    /// - Bond is activated
    function claimSoldAmount(uint256 amount) external;

    /// @notice When the bond is not on sale, issuer can claim remainder underlying asset
    /// Requirements:
    /// - Bond is not on sale
    /// - Only issuer
    function claimRemainderUnderlyingAsset() external;

    /// @notice When the bond is matured, investor must claim back the face value
    /// buy transfer the bond unit and returns the face amount
    /// @dev Get back the bond token, and transfer face asset to caller
    /// Requirements
    /// - The bond must be matured
    function claimFaceValue() external;

    /// @notice When the bond is matured, issuer be able to repay
    /// @dev
    /**
     *
     * Requirements:
     *
     * - Caller must be the issuer
     * - Only when the bond is matured
     */
    function repay() external;

    /// @notice Liquidate issuer underlying asset
    /// Requirements:
    /// - The bond must be matured
    /// - Issuer not pay the face value after a certain time
    function liquidate() external;

    function isPurchasable(address caller) external view returns (bool);
}
