// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/interfaces/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;


// File: contracts/FrogNileAirdrop.sol


pragma solidity ^0.8.16;


error NoAlloc();
error NotStarted();
error Claimed();
error Authorization();
error Mismatch();
error Paused();
error NotPaused();
error Incomplete();

contract FrogAirdrop {
    address public owner;

    IERC20 xNILE = IERC20(0xAAAE58986b24e422740C8F22B3efB80BCbD68159);

    mapping(address => uint256) allocation;
    mapping(address => bool) claimed;

    bool public paused;

    uint256 public start_time;
    uint256 public end_time;

    event Started(uint256 _length);
    event Ended();
    event ClaimAirdrop(address _user, uint256 _amount);

    modifier onlyAuth() {
        if (msg.sender != owner) revert Authorization();
        _;
    }

    constructor() {
        (owner, paused, start_time) = (msg.sender, true, 0);
    }

    ///@notice claim your airdrop
    function airdrop() external {
        if (!(start_time > 0)) revert NotStarted();
        if (claimed[msg.sender]) revert Claimed();
        if (!(allocation[msg.sender] > 0)) revert NoAlloc();
        uint256 _alloc = allocation[msg.sender];
        allocation[msg.sender] = 0;
        claimed[msg.sender] = true;
        xNILE.transfer(msg.sender, _alloc);
        emit ClaimAirdrop(msg.sender, _alloc);
    }

    ///@notice start the airdrop process
    ///@param _unixLength is the length in seconds for the airdrop period to last
    function enableAirdrop(uint256 _unixLength) external onlyAuth {
        if (!paused) revert NotPaused();
        paused = false;
        start_time = block.timestamp;
        end_time = start_time + _unixLength;
        emit Started(_unixLength);
    }

    ///@notice end the airdrop
    function endAirdrop() external onlyAuth {
        if (paused) revert Paused();
        if (block.timestamp < end_time) revert Incomplete();
        paused = true;
        xNILE.transfer(
            0x44376f8F52407ed66E6D3356535410A7DCd4652B,
            xNILE.balanceOf(address(this))
        );
        emit Ended();
    }

    ///@notice fill in the airdrop mappings
    function populateMapping(
        address[] calldata wallets,
        uint256[] calldata frogs
    ) external onlyAuth {
        if (wallets.length != frogs.length) revert Mismatch();
        for (uint256 i = 0; i < wallets.length; ++i) {
            allocation[wallets[i]] = (frogs[i] * 50 * 1e18);
        }
    }

    function emergencyWithdraw(address _token) external onlyAuth {
        IERC20(_token).transfer(
            msg.sender,
            IERC20(_token).balanceOf(address(this))
        );
    }

    function checkDistribution(address wallet) external view returns (uint256) {
        return (allocation[wallet]);
    }
}