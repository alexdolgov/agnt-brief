// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./BaseRelayRecipient.sol";


contract AuctionEscrow is BaseRelayRecipient {
    using SafeERC20 for IERC20;

    //The wallet structure which holds information about user funds
    struct Wallet {
        uint256 totalBalance;
        uint256 reservedBalance;
    }

    //Mapping of addresses who have access tp system only functions
    mapping(address => bool) public systems;

    //Address of treasury where the funds will go once auction is closed
    address public treasury;

    //Token supported for deposit and withdrawal
    address public token;

    //Mapping of userVsWallet(balances)
    mapping(address => Wallet) public balances;

    //Mapping of user versus nonce
    mapping(address => uint256) nonces;

    bytes32 public immutable DOMAIN_SEPARATOR;
    // keccak256("Reserve(address user,uint256 amount,uint256 nonce,uint256 deadline)");
    bytes32 public constant RESERVE_TYPEHASH = keccak256("Reserve(address user,uint256 amount,uint256 nonce,uint256 deadline)");


    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event Reserved(
        address indexed user,
        address indexed system,
        uint256 amount
    );
    event Unreserved(address indexed user, address indexed system, uint256 amount);
    event Release(address indexed treasury, uint256 amount);
    event setSystemEmit(address addr, bool enabled);



    /** 
     * @param _trustedForwarder Address of trusted forwarder
     * @param _token Address of supported token for auction
     * @param _treasury Address of the treasury
     * @param chainId Id of the chain we are deploying on
     */ 
    constructor(
        address _trustedForwarder,
        address _token,
        address _treasury,
        uint256 chainId
    )
    {
        require(_trustedForwarder != address(0), "Invalid Forwarder");
        require(_token != address(0), "Invalid token");
        require(_treasury != address(0), "Invalid Treasury");

        trustedForwarder = _trustedForwarder;
        token = _token;
        treasury = _treasury;

        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)'),
                keccak256(bytes("UNXD_AUCTION")),
                keccak256(bytes('1')),
                chainId,
                address(this)
            )
        );
    }

    modifier onlySystem() {
        require(
            systems[_msgSender()],
            "MultipleTokenEscrowEnabled: Not system."
        );
        _;
    }

    modifier onlySystemOrOwner() {
        require(
            systems[_msgSender()] || owner() == _msgSender(), "UNAUTHORIZED_ACCESS"
        );
        _;
    }

    /**
    * @dev Allows owner to change treasury
    * @param _treasury New address of the treasury
    */
    function changeTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "Invalid Treasury");
        treasury = _treasury;
    }

    /**
    * @dev Allows owner to add/remove system address
    * @param addr Address of the system
    * @param enabled Whether to enable or disable the system address access
     */
    function setSystem(address addr, bool enabled) external onlyOwner {
        systems[addr] = enabled;
        emit setSystemEmit(addr, enabled);
    }

    /**
    * @dev Returns the wallet/balance of the user
    * @param user Address of the user 
    */
    function getBalance(address user)
        public
        view
        returns (Wallet memory wallet)
    {
        return balances[user];
    }

    /**
    @dev Function to allow users to deposit wETH
    * @param amount Amount of tokens to be deposited
    */
    function deposit(uint256 amount)
        external
        payable
    {
        address sender = _msgSender();
        balances[sender].totalBalance += amount;
        IERC20(token).safeTransferFrom(sender, address(this), amount);
        emit Deposit(sender, amount);
    }

    /**
    * @dev Allows user to withdraw his/her funds which are not in reserved state
    * @param amount Amount of funds to be withdrawn
    */
    function withdraw(uint256 amount) external {
        
        address sender = _msgSender();
        
        Wallet storage wallet = balances[sender];
        uint256 withdrawableBalance = wallet.totalBalance - wallet.reservedBalance;

        require(amount <= withdrawableBalance, "Invalid amount");

        wallet.totalBalance = wallet.totalBalance - amount;
        IERC20(token).safeTransfer(sender, amount);

        emit Withdraw(sender, amount);
    }

    /**
    * @dev Allows system to reserver funds on behalf of the user when user places a successful bid
    * @param user Address of the user
    * @param amount Amount to be reserved
    * @param deadline Time upto which the signature is valid
    * @param v v component of the sign
    * @param r r component of the sign
    * @param s s component of the sign
    */
    function reserve(
        address user,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
        onlySystem
    {
        require(deadline >= block.timestamp, 'EXPIRED');
        bytes32 digest = keccak256(
            abi.encodePacked(
                '\x19\x01',
                DOMAIN_SEPARATOR,
                keccak256(abi.encode(RESERVE_TYPEHASH, user, amount, nonces[user]++, deadline))
            )
        );
        address recoveredAddress = ecrecover(digest, v, r, s);
        require(recoveredAddress != address(0) && recoveredAddress == user, 'INVALID_SIGNATURE');

        Wallet storage wallet = balances[user];
        uint256 freeBalance = wallet.totalBalance - wallet.reservedBalance;
        
        require(amount <= freeBalance, "Inavlid amount");

        wallet.reservedBalance = wallet.reservedBalance + amount;

        emit Reserved(
        user,
        _msgSender(),
        amount
    );
}

    /**
    * @dev Allows system to unreserve user's reserved balance
    * Owner can also call this method under emergency circumstances
    * @param user Address of the user
    * @param amount Amount to be unreserved
    */
    function unReserve(
        address user,
        uint256 amount
    )
        external
        onlySystemOrOwner
    {
        Wallet storage wallet = balances[user];
        require(amount <= wallet.reservedBalance, "INAVLID_AMOUNT");

        wallet.reservedBalance = wallet.reservedBalance - amount;

        emit Unreserved(user, _msgSender(), amount);
    }

    /**
    * @dev Funds will be released to the treasury from the user's reserved balance
    *      Only owner can call this method
    * @param user Address of the user
    * @param amount Amount to be released
    */
    function release(
        address user,
        uint256 amount
    )
        external
        onlyOwner
    {

        Wallet storage wallet = balances[user];
        require(amount <= wallet.reservedBalance, "Inavlid Amount");
        wallet.totalBalance = wallet.totalBalance - amount;
        wallet.reservedBalance = wallet.reservedBalance - amount;

        IERC20(token).safeTransfer(treasury, amount);
        emit Release(treasury, amount);

    }
}
