pragma solidity ^0.5.16;
import "../SafeMath.sol";
import "./Utils/IBEP20.sol";

contract LPVaultAdminStorage {
    /**
    * @notice Administrator for this contract
    */
    address public admin;

    /**
    * @notice Pending administrator for this contract
    */
    address public pendingAdmin;

    /**
    * @notice Active brains of LP Vault
    */
    address public lpVaultImplementation;

    /**
    * @notice Pending brains of LP Vault
    */
    address public pendingLPVaultImplementation;
}

contract LPVaultStorage is LPVaultAdminStorage {
    /// @notice The Atlantis TOKEN!
    IBEP20 public atlantis;

    /// @notice The LP TOKEN!
    IBEP20 public lp;

    /// @notice Guard variable for re-entrancy checks
    bool internal _notEntered;

    /// @notice Atlantis balance of vault
    uint256 public atlantisBalance;

    /// @notice Accumulated Atlantis per share
    uint256 public accAtlantisPerShare;

    //// pending rewards awaiting anyone to update
    uint256 public pendingRewards;

    /// @notice Info of each user.
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    // Info of each user that stakes tokens.
    mapping(address => UserInfo) public userInfo;
}
