// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LandshareAPIConsumer is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public USDC;
    bytes32 private jobId;
    uint256 private fee;
    string[] propertyIDs;
    uint public propertyValue = 576671 wei;
    struct Property {
        string id;
        uint value;
    }
    Property[] properties;
    mapping(address => bool) public Admins;
    address[] public stableCoins;
    address[] public reserveWallets;
    address public RWATokenAddress;
    uint public onchainAssets;
    uint public reserveRWA;
    uint256 public bankBalance;
    uint256 public offChainAssets;
    uint256 public minValue = 400000 * 1e18;
    uint256 public maxValue = 500000 * 1e18;
    uint256 internal LINK_DIVISIBILITY = 10**18;

    address private oracleAddress;

    event RequestPropertyValue(bytes32 indexed requestId, uint256 property);
    event BankBalanceUpdated(uint256 _bankBalance);
    event StableCoinAdded(address _stableCoinAddress);
    event StableCoinRemoved(address _stableCoinAddress);
    event ReserveWalletAdded(address _reserveWalletAddress);
    event ReserveWalletRemoved(address _reserveWalletAddress);
    event ValueUpdated(uint256 value);

    constructor(address _RWATokenAddress) Ownable(msg.sender) {
        USDC = IERC20(0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d);
        jobId = "d20a6f1bd3b74b79884ea5c2c135f127";
        setFeeInHundredthsOfLink(10); 
        RWATokenAddress = _RWATokenAddress;
    }

    // Update Property Value
    function setPropoertyValue(uint _propertyValue) public onlyOwner {
        propertyValue = _propertyValue;
    }

    // Update oracle address
    function setOracleAddress(address _oracleAddress) public onlyOwner {
        oracleAddress = _oracleAddress;
    }

    function getOracleAddress() public view onlyOwner returns (address) {
        return oracleAddress;
    }

    // Update jobId
    function setJobId(string memory _jobId) public onlyOwner {
        jobId = bytes32(bytes(_jobId));
    }
    function getJobId() public view onlyOwner returns (string memory) {
        return string(abi.encodePacked(jobId));
    }
    
    // Update fees
    function setFeeInJuels(uint256 _feeInJuels) public onlyOwner {
        fee = _feeInJuels;
    }
    function setFeeInHundredthsOfLink(uint256 _feeInHundredthsOfLink) public onlyOwner {
        setFeeInJuels((_feeInHundredthsOfLink * LINK_DIVISIBILITY) / 100);
    }
    function getFeeInHundredthsOfLink() public view onlyOwner returns (uint256) {
        return (fee * 100) / LINK_DIVISIBILITY;
    }

    function setMin(uint256 newMin) external onlyAdmin {
        minValue = newMin;
    }
    
    function setMax(uint256 newMax) external onlyAdmin {
        maxValue = newMax;
    }

    function setBankBalance(uint256 _bankBalance) public onlyAdmin {
        bankBalance = _bankBalance;
        emit BankBalanceUpdated(_bankBalance);
    }

    function addProperty(string memory id) public onlyAdmin {
        for (uint i = 0; i < properties.length; i++) {
            require(keccak256(abi.encodePacked(properties[i].id)) != keccak256(abi.encodePacked(id)), "Property id exists");
        }
        properties.push(Property(id, 0));
    }

    function removeProperty(string memory id) public onlyAdmin {
        for (uint i = 0; i < properties.length; i++) {
            if (
                keccak256(abi.encodePacked(properties[i].id)) ==
                keccak256(abi.encodePacked(id))
            ) {
                properties[i] = properties[properties.length - 1];
            }
        }
        properties.pop();
    }

    function addStableCoin(address _stableCoinAddress) public onlyAdmin {
        stableCoins.push(_stableCoinAddress);
        emit StableCoinAdded(_stableCoinAddress);
    }

    function removeStableCoin(address _stableCoinAddress) public onlyAdmin {
        uint index;
        for (uint i = 0; i < stableCoins.length; i++) {
            if (
                keccak256(abi.encodePacked(stableCoins[i])) ==
                keccak256(abi.encodePacked(_stableCoinAddress))
            ) {
                index = i;
            }
        }
        uint count = stableCoins.length;
        for (uint i = index; i < count - 1; i++) {
            stableCoins[i] = stableCoins[i + 1];
        }
        delete stableCoins[count - 1];
        emit StableCoinRemoved(_stableCoinAddress);
    }

    function addReserveWallet(address _reserveWalletAddress) public onlyAdmin {
        reserveWallets.push(_reserveWalletAddress);
        emit ReserveWalletAdded(_reserveWalletAddress);
    }

    function removeReserveWallet(
        address _reserveWalletAddress
    ) public onlyAdmin {
        uint index;
        for (uint i = 0; i < reserveWallets.length; i++) {
            if (
                keccak256(abi.encodePacked(reserveWallets[i])) ==
                keccak256(abi.encodePacked(_reserveWalletAddress))
            ) {
                index = i;
            }
        }
        uint count = reserveWallets.length;
        for (uint i = index; i < count - 1; i++) {
            reserveWallets[i] = reserveWallets[i + 1];
        }
        delete reserveWallets[count - 1];
        emit ReserveWalletRemoved(_reserveWalletAddress);
    }

    function getReserveWalletBalance(
        address stableCoin,
        address reserveWallet
    ) private view returns (uint256) {
        IERC20 stablecoin = IERC20(stableCoin);
        uint256 balance = stablecoin.balanceOf(reserveWallet);
        return balance;
    }

    function setOnchainAssets() public onlyAdmin
    {
        uint256 balance = 0;
        for (uint j = 0; j < reserveWallets.length; j++) {
            for (uint i = 0; i < stableCoins.length; i++) {
                balance += getReserveWalletBalance(
                    stableCoins[i],
                    reserveWallets[j]
                );
            }
        }
        onchainAssets = balance;
        uint256 totalValue = getRWAPrice();
        emit ValueUpdated(totalValue);
    }

    function setReserveRWA() public onlyAdmin {
        uint256 balance = 0;
        for (uint j = 0; j < reserveWallets.length; j++) {
            balance += IERC20(RWATokenAddress).balanceOf(reserveWallets[j]);
        }
        reserveRWA = balance;
    }


    function getRWAPrice() public view returns (uint256) {
        uint256 totalSupply = IERC20(RWATokenAddress).totalSupply() - reserveRWA;
        return (getTotalValue() / totalSupply);
    }

    function getPropertyIDs() public view returns (Property[] memory) {
        return properties;
    }

    function getPropertyValues(string memory id) public view returns (uint) {
        for(uint256 i = 0; i < properties.length; i ++) {
            if(keccak256(abi.encodePacked(id)) == keccak256(abi.encodePacked(properties[i].id))) {
                return properties[i].value;
            }
        }
        return 0;
    }

    function updatePropertyValues(string memory id, uint _value) public onlyAdmin {
        for(uint256 i = 0; i < properties.length; i ++) {
            if(keccak256(abi.encodePacked(id)) == keccak256(abi.encodePacked(properties[i].id))) {
                properties[i].value = _value;
            }
        }
    }

    function addAdmin(address admin) public onlyOwner {
        Admins[admin] = true;
    }

    function removeAdmin(address admin) public onlyOwner {
        Admins[admin] = false;
    }

    function existForReserveWallets(address addr) public view returns (bool) {
        for (uint i = 0; i < reserveWallets.length; i++) {
            if (reserveWallets[i] == addr) {
                return true;
            }
        }
        return false;
    }

    function existForStablecoins(address addr) public view returns (bool) {
        for (uint i = 0; i < stableCoins.length; i++) {
            if (stableCoins[i] == addr) {
                return true;
            }
        }
        return false;
    }


    function setOffchainAssets() public onlyAdmin  {
        
        uint256 tempValue = propertyValue +
        bankBalance;

        require(tempValue > minValue && tempValue < maxValue, "value out of bounds");
        
        offChainAssets = tempValue; 
        uint256 totalValue = getRWAPrice();
        emit ValueUpdated(totalValue);
    }

    function getTotalValue() public view returns (uint256) {
        return offChainAssets + onchainAssets;
    }

    modifier onlyAdmin() {
        require(Admins[msg.sender] == true || msg.sender == owner());
        _;
    }
}