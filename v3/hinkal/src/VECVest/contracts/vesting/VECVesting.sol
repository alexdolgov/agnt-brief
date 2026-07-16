pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
}

contract VECVest is Ownable {
    /// STRUCTS ///

    struct Term {
        uint256 totalToVest;
        uint256 amountClaimed;
    }

    /// STATE VARIABLES ///

    /// @notice Claim Token
    address public immutable VEC;
    /// @notice Address of deployer
    address public immutable deployer;
    /// @notice Tracks address term info
    mapping(address => Term) public terms;
    /// @notice Tracks address change
    mapping(address => address) public walletChange;
    uint256 public totalAllocated;
    /// @notice Total VEC allocated == 1,000,000
    uint256 public constant MAX_ALLOCATED = 1_000_000 * 1e9;
    /// @notice Timestamp becomes fully vested
    uint256 public immutable fullVest;
    /// @notice Timestamp vesting started
    uint256 public immutable startVest;

    constructor() Ownable() {
        VEC = 0x1BB9b64927e0C5e207C9DB4093b3738Eef5D8447;
        deployer = msg.sender;

        startVest = 1706200400;
        fullVest = 1706200400 + 365 days;
    }

    /// MUTABLE FUNCTIONS ///

    /// @notice         Allows wallet to claim VEC
    /// @param _to      Address to transfer minted VEC to
    /// @param _amount  Amount of VEC to claim
    function claim(address _to, uint256 _amount) external {
        require(redeemableFor(msg.sender) >= _amount, "Claim more than vested");
        IERC20(VEC).transfer(_to, _amount);
        terms[msg.sender].amountClaimed += _amount;
    }

    /// WALLET CHANGES ///

    /// @notice             Allows address to push terms to new address
    /// @param _newAddress  New wallets address
    function pushWalletChange(address _newAddress) external {
        require(terms[msg.sender].totalToVest != 0, "No wallet to change");
        walletChange[msg.sender] = _newAddress;
    }

    /// @notice             Allows new address to pull terms
    /// @param _oldAddress  Old address to pull terms for
    function pullWalletChange(address _oldAddress) external {
        require(walletChange[_oldAddress] == msg.sender, "Old wallet did not push");
        require(terms[msg.sender].totalToVest == 0, "Wallet already exists");

        walletChange[_oldAddress] = address(0);
        terms[msg.sender] = terms[_oldAddress];
        delete terms[_oldAddress];
    }

    /// VIEW FUNCTIONS ///

    /// @notice       Returns % of overall vesting completed
    /// @return uint  Percent of overall vesting 1e8 == 10%
    function percentVested() public view returns (uint256) {
        if (block.timestamp > fullVest) return 1e9;

        uint256 timeSinceVestStart = block.timestamp - startVest;

        return ((1e9 * timeSinceVestStart) / 365 days);
    }

    /// @notice          View VEC redeemable for `_address`
    /// @param _address  Redeemable for address
    /// @return uint256  VEC redeemable for `_address`
    function redeemableFor(address _address) public view returns (uint256) {
        Term memory info = terms[_address];
        uint256 totalReedemable = (info.totalToVest * percentVested()) / 1e9;

        if (totalReedemable < info.amountClaimed) return 0;
        return totalReedemable - info.amountClaimed;
    }

    /// OWNER FUNCTIONS ///

    /// @notice         Set terms for new address
    /// @notice         Cannot lower for address or exceed maximum total allocation
    /// @param _address Address of who to set terms for
    /// @param _amount  Amount of VEC to vest  
    function setTerms(address _address, uint256 _amount) external {
        require(msg.sender == owner() || msg.sender == deployer, "msg.sender not approved");
        require(terms[_address].totalToVest == 0, "Address already exists");
        terms[_address] = Term({totalToVest: _amount, amountClaimed: 0});
        require(totalAllocated + _amount <= MAX_ALLOCATED, "Cannot allocate more than 1,000,000 VEC");
        totalAllocated += _amount;
    }
}
