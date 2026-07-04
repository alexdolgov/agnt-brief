// SPDX-License-Identifier: GPL-3.0
/*                            ******@@@@@@@@@**@*                               
                        ***@@@@@@@@@@@@@@@@@@@@@@**                             
                     *@@@@@@**@@@@@@@@@@@@@@@@@*@@@*                            
                  *@@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@*@**                          
                 *@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@*                         
                **@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@**                       
                **@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@@@@@*                      
                **@@@@@@@@@@@@@@@@*************************                    
                **@@@@@@@@***********************************                   
                 *@@@***********************&@@@@@@@@@@@@@@@****,    ******@@@@*
           *********************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@************* 
      ***@@@@@@@@@@@@@@@*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@****@@*********      
   **@@@@@**********************@@@@*****************#@@@@**********            
  *@@******************************************************                     
 *@************************************                                         
 @*******************************                                               
 *@*************************                                                    
   ********************* 
   
    /$$$$$                                               /$$$$$$$   /$$$$$$   /$$$$$$ 
   |__  $$                                              | $$__  $$ /$$__  $$ /$$__  $$
      | $$  /$$$$$$  /$$$$$$$   /$$$$$$   /$$$$$$$      | $$  \ $$| $$  \ $$| $$  \ $$
      | $$ /$$__  $$| $$__  $$ /$$__  $$ /$$_____/      | $$  | $$| $$$$$$$$| $$  | $$
 /$$  | $$| $$  \ $$| $$  \ $$| $$$$$$$$|  $$$$$$       | $$  | $$| $$__  $$| $$  | $$
| $$  | $$| $$  | $$| $$  | $$| $$_____/ \____  $$      | $$  | $$| $$  | $$| $$  | $$
|  $$$$$$/|  $$$$$$/| $$  | $$|  $$$$$$$ /$$$$$$$/      | $$$$$$$/| $$  | $$|  $$$$$$/
 \______/  \______/ |__/  |__/ \_______/|_______/       |_______/ |__/  |__/ \______/                                      
*/

pragma solidity ^0.8.2;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IJonesAsset} from "../interfaces/IJonesAsset.sol";

/// @title Jones Asset V1 Vault
/// @author Jones DAO

contract JonesAssetVaultV1 is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // jAsset Token
    IJonesAsset public jonesAssetToken;

    // asset Token
    IERC20 public assetToken;

    // deposit window status
    bool public DEPOSIT_WINDOW_OPEN = false;

    // claim window status
    bool public CLAIM_WINDOW_OPEN = false;

    // vault cap status
    bool public vaultCapSet = false;

    // vault cap value
    uint256 public vaultCap;

    // snapshot of the vault's asset balance before sending to multisig
    uint256 public snapshotVaultBalance = 1;

    // snapshot of minted jAsset supply before at deposit window close
    uint256 public snapshotJonesAssetSupply = 1;

    // emitted on deposit
    event Deposited(
        address indexed _from,
        uint256 indexed _assetAmount,
        uint256 _jonesAssetAmount
    );

    // emitted on claim
    event Claimed(
        address indexed _from,
        uint256 indexed _assetAmount,
        uint256 _jonesAssetAmount
    );

    // emitted when vault balance snapshot is taken
    event SnapshotBalance(uint256 indexed _assetAmount);

    // emitted when the AUM multisig sends funds and yield to the vault
    event DepositFromMultisig(uint256 indexed _assetAmount);

    // emitted when deposited assets are sent to the AUM multisig
    event WithdrawalToMultisig(uint256 indexed _assetAmount);

    /// @param _jonesAsset JonesAsset contract address.
    /// @param _asset Asset contract address.
    /// @param _aumMultisigAddr AUM multisig address.
    constructor(
        IJonesAsset _jonesAsset,
        IERC20 _asset,
        address _aumMultisigAddr
    ) {
        require(_aumMultisigAddr != address(0), "Invalid aum multisig address");
        jonesAssetToken = _jonesAsset;
        assetToken = _asset;
        transferOwnership(_aumMultisigAddr);
    }

    // ============================== Depositing ==============================

    /// Mint jAsset by depositing Asset into the vault.
    /// @dev Assumes both tokens have same decimal places.
    /// @param _amount Amount of Asset to deposit.
    function depositAsset(uint256 _amount) public payable nonReentrant {
        require(DEPOSIT_WINDOW_OPEN, "Deposit window is not open.");
        require(_amount > 0, "Invalid amount");
        require(
            assetToken.balanceOf(msg.sender) >= _amount,
            "Insufficient Asset balance."
        );

        if (vaultCapSet) {
            require(
                assetToken.balanceOf(address(this)) + _amount <= vaultCap,
                "Amount exceeds vault cap."
            );
        }

        uint256 mintableJAsset = convertToJAsset(_amount);

        // deposit assets into the vault
        assetToken.safeTransferFrom(msg.sender, address(this), _amount);

        // mint jAsset
        jonesAssetToken.mint(msg.sender, mintableJAsset);

        emit Deposited(msg.sender, mintableJAsset, _amount);
    }

    // ============================== Claiming ==============================

    /// Burn jAsset and redeem Asset from the vault.
    /// @dev Assumes both tokens have same decimal places.
    /// @param _amount Amount of jAsset to burn.
    function claimAsset(uint256 _amount) public nonReentrant {
        require(CLAIM_WINDOW_OPEN, "Claim window is not open.");
        require(_amount > 0, "Amount must be greater than 0.");
        require(
            jonesAssetToken.balanceOf(msg.sender) >= _amount,
            "Not enough jAsset."
        );
        uint256 redeemableAsset = convertToAsset(_amount);
        require(
            assetToken.balanceOf(address(this)) >= redeemableAsset,
            "Not enough Assset in the contract."
        );

        // burn jAsset
        jonesAssetToken.burnFrom(msg.sender, _amount);

        // redeem assets
        assetToken.transfer(msg.sender, redeemableAsset);

        emit Claimed(msg.sender, redeemableAsset, _amount);
    }

    // ============================== Setters ==============================

    /// @notice Open/close vault for deposits.
    /// @param _open True to open, false to close.
    /// @param _vaultCapSet True if vault cap is set.
    /// @param _vaultCap Vault cap (18 decimal).
    function setDepositWindowOpen(
        bool _open,
        bool _vaultCapSet,
        uint256 _vaultCap
    ) public onlyOwner {
        require(!CLAIM_WINDOW_OPEN, "Claim window is open");
        require(
            _open != DEPOSIT_WINDOW_OPEN,
            "Deposit window is already open."
        );
        if (!_open) {
            // if closing deposits take snapshot
            snapshotJonesAssetSupply = jonesAssetToken.totalSupply();
            updateVaultBalanceSnapshot();
        } else if (_vaultCapSet) {
            // if opening deposits and deposit cap
            require(_vaultCap > 0, "Vault cap must be greater than 0");
            vaultCap = _vaultCap;
            vaultCapSet = true;
        }
        DEPOSIT_WINDOW_OPEN = _open;
    }

    /// @notice Open/close vault for burning and redeeming
    /// @param _open True to open, false to close.
    function setClaimWindowOpen(bool _open) public onlyOwner {
        require(!DEPOSIT_WINDOW_OPEN, "Deposit window is open");
        CLAIM_WINDOW_OPEN = _open;
    }

    /// Update vault value snapshot.
    /// @dev This function is called by the AUM multisig.
    function updateVaultBalanceSnapshot() public onlyOwner {
        snapshotVaultBalance = assetToken.balanceOf(address(this));
        emit SnapshotBalance(snapshotVaultBalance);
    }

    // ============================== Views ==============================

    /// Calculates claimable Asset for a given user.
    /// @return claimable Asset.
    /// @param _user user address.
    function claimableAsset(address _user) public view returns (uint256) {
        uint256 usrBalance = jonesAssetToken.balanceOf(_user);
        if (usrBalance > 0) {
            return convertToAsset(usrBalance);
        }
        return 0;
    }

    /// Calculates claimable asset amount for a given amount of jAsset
    /// @param _jAssetAmount Amount of jAsset.
    /// @return claimable asset amount.
    function convertToAsset(uint256 _jAssetAmount)
        public
        view
        returns (uint256)
    {
        return
            _jAssetAmount.mul(snapshotVaultBalance).div(
                snapshotJonesAssetSupply
            );
    }

    /// Calculates mintable jAsset amount for a given amount of asset
    /// @param _assetAmount Amount of Asset.
    /// @return mintable jAsset amount.
    function convertToJAsset(uint256 _assetAmount)
        public
        view
        returns (uint256)
    {
        return
            _assetAmount.mul(snapshotJonesAssetSupply).div(
                snapshotVaultBalance
            );
    }

    // ============================== AUM multisig functions ==============================

    function multisigDepositAssets(uint256 _amount) public onlyOwner {
        require(
            !DEPOSIT_WINDOW_OPEN && !CLAIM_WINDOW_OPEN,
            "Deposit and claim windows are open."
        );
        require(_amount > 0, "Amount must be greater than 0.");
        require(
            assetToken.balanceOf(msg.sender) >= _amount,
            "Insufficient Asset balance."
        );
        assetToken.safeTransferFrom(msg.sender, address(this), _amount);
        updateVaultBalanceSnapshot();
        emit DepositFromMultisig(_amount);
    }

    /// Withdraws all Asset from the vault to the aumMultisigAddr address.
    function withdrawToMultisig() public onlyOwner {
        require(
            !DEPOSIT_WINDOW_OPEN && !CLAIM_WINDOW_OPEN,
            "Deposit and claim windows are open."
        );
        uint256 assetBalance = assetToken.balanceOf(address(this));
        require(assetBalance > 0, "No gOHM to withdraw.");
        assetToken.transfer(msg.sender, assetBalance);
        emit WithdrawalToMultisig(assetBalance);
    }
}
