// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../../interfaces/ILynexKeys.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AirdropClaimKey is Ownable, ReentrancyGuard {

    using SafeERC20 for IERC20;

    /**
     * @dev Represents user information for an airdrop.
     * @param tokenAmount The amount of claimed tokens.
     * @param keyTier The Lynex Key NFT tier (e.g., 2 for "gold").
     * @param to The airdrop receiving address.
     */
    struct UserInfo {
        uint256 tokenAmount;
        uint256 keyTier;
        address to;
    }

    bool public init;

    uint256 public totalAirdrop;

    ILynexKeys public key;
    address public merkle;
    IERC20 public token;

    mapping(address => UserInfo) public users;
    mapping(address => bool) public usersFlag;
    mapping(address => bool) public depositors;

    modifier onlyMerkle {
        require(msg.sender == merkle, 'not merkle');
        _;
    }

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    constructor(address _token, address _key) Ownable() {
        token = IERC20(_token);
        key = ILynexKeys(_key);
    }


    function deposit(uint256 amount) external nonReentrant {
        require(depositors[msg.sender] == true || msg.sender == owner(), 'only depositors or owner can deposit');
        require(init == false);
        token.safeTransferFrom(msg.sender, address(this), amount);
        totalAirdrop += amount;
        emit Deposit(amount);
    }

    /// @dev msg.sender can withdraw all tokens from the contract
    function withdraw(uint256 amount, address _token, address _to) external nonReentrant {
        require(depositors[msg.sender] == true || msg.sender == owner(), 'only depositors or owner can withdraw');
        totalAirdrop -= amount;
        IERC20(_token).safeTransfer(_to, amount);
        emit Withdraw(amount);
    }

    /// @notice set user information for Key and oToken claim
    /// @param _who is claiming
    /// @param _to who is getting the Key and oTokens
    /// @param _amount total amount of oTokens to claim
    /// @param _keyTier Lynex Key tier for claiming the correct Key according to eligible tier
    function setUserInfo(address _who, address _to, uint256 _amount, uint256 _keyTier) external onlyMerkle nonReentrant returns(bool status) {
        require(_who != address(0), 'addr 0');
        require(_to != address(0), 'addr 0');
        require(_amount > 0, 'amnt 0');
        require(usersFlag[_who] == false, '!flag');
        require(init, 'not init');
        require(_keyTier > 0, 'key tier must be greater than 0');

        UserInfo memory _user = UserInfo({
            tokenAmount: _amount,
            keyTier: _keyTier,
            to: _to
        });

        users[_who] = _user;
        usersFlag[_who] = true;

        // send out oToken amount
        token.safeTransfer(_to, _amount);

        // mint NFT
        key.mint(_to, _keyTier);

        status = true;
    }

    /* 
        OWNER FUNCTIONS
    */

    function setDepositor(address depositor) external onlyOwner {
        require(depositors[depositor] == false, "not a depositor");
        depositors[depositor] = true;
    }

    function setMerkleTreeContract(address _merkle) external onlyOwner {
        require(Address.isContract(_merkle), "Merkle is not a contract");
        merkle = _merkle;
    }
    
    function _init() external onlyOwner {
        require(init == false, 'AirdropClaim contract already initialized');
        init = true;
    }

}