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
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IJonesAsset} from "../interfaces/IJonesAsset.sol";

/// @title Jones ETH V1 Vault
/// @author Jones DAO

contract JonesETHVaultV1 is Ownable, ReentrancyGuard {
    using SafeMath for uint256;

    // jAsset contract
    IJonesAsset public jonesETHToken;

    // deposit window status
    bool public DEPOSIT_WINDOW_OPEN = false;

    // claim window status
    bool public CLAIM_WINDOW_OPEN = false;

    // vault cap status
    bool public vaultCapSet = false;

    // vault cap value
    uint256 public vaultCapGwei;

    // snapshot of the vault's ETH balance before sending to multisig
    uint256 public snapshotVaultBalance = 1;

    // snapshot of minted jAsset supply before at deposit window close
    uint256 public snapshotJonesETHSupply = 1;

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

    /// @param _jonesETH JonesETH contract address.
    /// @param _aumMultisigAddr AUM multisig address.
    constructor(IJonesAsset _jonesETH, address _aumMultisigAddr) {
        require(_aumMultisigAddr != address(0), "Invalid aum multisig address");
        jonesETHToken = _jonesETH;
        transferOwnership(_aumMultisigAddr);
    }

    // ============================== Depositing ==============================

    /// Mint jETH by depositing ETH into the vault.
    /// @param _amount Amount of ETH to deposit.
    function depositETH(uint256 _amount) public payable {
        require(DEPOSIT_WINDOW_OPEN, "Deposit window is not open.");
        require(_amount > 0, "Invalid amount");
        require(msg.value >= _amount, "Insufficient ETH");

        if (vaultCapSet) {
            require(
                address(this).balance + msg.value <= vaultCapGwei,
                "Amount exceeds vault cap."
            );
        }

        uint256 mintableJEth = convertToJAsset(_amount);

        // mint jAsset
        jonesETHToken.mint(msg.sender, mintableJEth);

        emit Deposited(msg.sender, mintableJEth, _amount);
    }

    /// Deposit fallback function.
    receive() external payable nonReentrant {
        require(msg.sender != owner(), "Use multisigDepositAssets fn");
        address beneficiary = msg.sender;
        require(beneficiary != address(0), "invalid address");
        require(msg.value > 0, "invalid amount");
        depositETH(msg.value);
    }

    // ============================== Claiming ==============================

    /// Burn jETH and redeem ETH from the vault.
    /// @dev Assumes both tokens have same decimal places.
    /// @param _amount Amount of jETH to burn.
    function claimETH(uint256 _amount) public nonReentrant {
        require(CLAIM_WINDOW_OPEN, "Claim window is not open.");
        require(_amount > 0, "Amount must be greater than 0.");
        require(
            jonesETHToken.balanceOf(msg.sender) >= _amount,
            "Not enough jETH."
        );
        uint256 redeemableEth = convertToAsset(_amount);
        require(
            address(this).balance >= redeemableEth,
            "Not enough ETH in the contract."
        );

        // burn jAsset
        jonesETHToken.burnFrom(msg.sender, _amount);

        // redeem ETH
        payable(msg.sender).transfer(redeemableEth);

        emit Claimed(msg.sender, redeemableEth, _amount);
    }

    // ============================== Setters ==============================

    /// @notice Open/close vault for deposits.
    /// @param _open True to open, false to close.
    /// @param _vaultCapSet True if vault cap is set.
    /// @param _vaultCapGwei Vault cap (18 decimal).
    function setDepositWindowOpen(
        bool _open,
        bool _vaultCapSet,
        uint256 _vaultCapGwei
    ) public onlyOwner {
        require(!CLAIM_WINDOW_OPEN, "Claim window is open");
        require(
            _open != DEPOSIT_WINDOW_OPEN,
            "Deposit window is already open."
        );
        if (!_open) {
            // if closing deposits take snapshot
            snapshotJonesETHSupply = jonesETHToken.totalSupply();
            updateVaultBalanceSnapshot();
        } else if (_vaultCapSet) {
            // if opening deposits and deposit cap
            require(_vaultCapGwei > 0, "Vault cap must be greater than 0");
            vaultCapGwei = _vaultCapGwei;
            vaultCapSet = true;
        }
        DEPOSIT_WINDOW_OPEN = _open;
    }

    /// Open/close vault for burning and redeeming.
    /// @param _open True to open, false to close.
    function setClaimWindowOpen(bool _open) public onlyOwner {
        require(!DEPOSIT_WINDOW_OPEN, "Deposit window is open");
        CLAIM_WINDOW_OPEN = _open;
    }

    /// Update vault value snapshot.
    /// @dev This function is called by the AUM multisig.
    function updateVaultBalanceSnapshot() public onlyOwner {
        snapshotVaultBalance = address(this).balance;
        emit SnapshotBalance(snapshotVaultBalance);
    }

    // ============================== Views ==============================

    /// Calculates claimable ETH for a given user.
    /// @return claimable ETH.
    /// @param _user user address.
    function claimableEth(address _user) public view returns (uint256) {
        uint256 usrBalance = jonesETHToken.balanceOf(_user);
        if (usrBalance > 0) {
            return convertToAsset(usrBalance);
        }
        return 0;
    }

    /// Calculates claimable ETH amount for a given amount of jETH
    /// @param _jAssetAmount Amount of jETH.
    /// @return claimable ETH amount.
    function convertToAsset(uint256 _jAssetAmount)
        public
        view
        returns (uint256)
    {
        return
            _jAssetAmount.mul(snapshotVaultBalance).div(snapshotJonesETHSupply);
    }

    /// Calculates mintable jETH amount for a given amount of ETH
    /// @param _assetAmount Amount of ETH.
    /// @return mintable jETH amount.
    function convertToJAsset(uint256 _assetAmount)
        public
        view
        returns (uint256)
    {
        return
            _assetAmount.mul(snapshotJonesETHSupply).div(snapshotVaultBalance);
    }

    // ============================== AUM multisig functions ==============================

    function multisigDepositAssets(uint256 _amount) public payable onlyOwner {
        require(
            !DEPOSIT_WINDOW_OPEN && !CLAIM_WINDOW_OPEN,
            "Deposit and claim windows are open."
        );
        require(msg.value >= _amount, "Insufficient ETH");
        updateVaultBalanceSnapshot();
        emit DepositFromMultisig(_amount);
    }

    /// Withdraws all ETH from the vault to the aumMultisigAddr address.
    function withdrawToMultisig() public onlyOwner {
        require(
            !DEPOSIT_WINDOW_OPEN && !CLAIM_WINDOW_OPEN,
            "Deposit and claim windows are open."
        );
        uint256 assetBalance = address(this).balance;
        require(assetBalance > 0, "No ETH in the contract.");
        payable(msg.sender).transfer(assetBalance);
        emit WithdrawalToMultisig(assetBalance);
    }
}
