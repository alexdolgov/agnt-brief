// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

interface PancakeSwapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract Presale is Ownable {
    IERC20 public token;
    IERC20Metadata public tokenMetadata;
    AggregatorV3Interface public priceFeed;
    IERC20 public moonshare;

    address public paymentAddress;
    uint256 public presaleTokenAmount = 100_000_000_000000000000000000;
    uint256 public presaleTokenBNBAmount = 50_000_000_000000000000000000;
    uint256 public presaleTokenMoonShareAmount = 50_000_000_000000000000000000;

    uint256 public totalSold = 0;
    uint256 public totalBNBSold = 0;
    uint256 public totalMoonShareSold = 0;

    uint256 public startTime = 0;

    struct Tokens {
        uint256 bnbAmount;
        uint256 moonshareAmount;
    }

    mapping(string => Tokens) public partners;

    struct Stage {
        uint256 id;
        uint256 bonus;
        uint256 price;
        uint256 start;
        uint256 end;
    }
    mapping(uint256 => Stage) public stages;
    uint256 public maxStage = 4;
    uint256 currentStageId = 0;

    mapping(address => Tokens) public wallets;

    uint256 public maxPerWallet = 1000000 ether;

    // constructor
    constructor(address _priceFeed, address _moonshare, uint _startTime) Ownable(msg.sender) {
        priceFeed = AggregatorV3Interface(_priceFeed);

        moonshare = IERC20(_moonshare);
        paymentAddress = msg.sender;
        startTime = _startTime;

        // stage data
        stages[1] = Stage(1, 0, 4000000000000000, block.timestamp, 1737482400); //stage 1

        currentStageId = 1;
    }

    // Get the latest ETH/USD price from the Aggregator
    function getEthToUsdPrice() public view returns (int256) {
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price;
    }

    function getMoonShareToUsdPrice() public pure returns (int256) {
        return 10_000_000; // With 8 decimals, this is 10 cents
    }

    // Convert ETH to USD based on the latest price from the Aggregator
    function convertEthToUsd(uint256 ethAmount) public view returns (uint256) {
        int256 ethToUsdPrice = getEthToUsdPrice();

        uint256 usdAmount = (ethAmount * uint256(ethToUsdPrice)) / (10 ** priceFeed.decimals());
        return usdAmount;
    }

    function convertMoonshareToUsd(uint256 moonshareAmount) public view returns (uint256) {
        int256 moonshareToUsdPrice = getMoonShareToUsdPrice();

        uint256 usdAmount = (moonshareAmount * uint256(moonshareToUsdPrice)) / (10 ** priceFeed.decimals());

        return usdAmount;
    }

    // buyToken funtion to buy tokens
    // @param _amount No of tokens to buy
    function buyToken(uint256 _amount, string memory _partner) public payable {
        require(block.timestamp >= startTime, "Presale hasn't started");

        require(_amount >= 0, "Please enter minimum token!");
        uint256 _id = getCurrentStageIdActive();
        require(_id > 0, "Stage info not available!");
        uint256 _price = stages[_id].price;
        uint256 _end = stages[_id].end;
        require(_end >= block.timestamp, "Presale end!");
        uint256 _totalPayUsd = _amount * _price;
        uint256 _ethToUsd = convertEthToUsd(1e18);
        uint256 _totalPayAmount = _totalPayUsd / _ethToUsd;
        require(msg.value >= _totalPayAmount, "Not enough payment!");
        uint256 _weiAmount = _amount * 1e18;

        uint256 _totalAmount = _weiAmount;
        uint256 _tokenDecimals = tokenMetadata.decimals();
        uint256 _subDecimals = 18 - _tokenDecimals;
        uint256 _totalTokenAmount = _totalAmount / (10 ** _subDecimals);
        require(_totalTokenAmount <= token.balanceOf(address(this)), "Presale contract doesn't have enough token!");

        require((totalSold + _totalTokenAmount) <= presaleTokenAmount, "Presale token amount exceeds!");

        require((totalBNBSold + _totalTokenAmount) <= presaleTokenBNBAmount, "Presale token amount exceeds BNB limit!");

        require(_totalTokenAmount + wallets[msg.sender].bnbAmount <= maxPerWallet, "Max per wallet is 1M tokens");

        //payment price transfer to payement address
        require(payable(paymentAddress).send(msg.value), "Failed to transfer ETH payment!");

        //purchased tokens transfer to buyer address
        require(token.transfer(msg.sender, _totalTokenAmount), "Failed to transfer token!");

        // Add to partner
        partners[_partner].bnbAmount += (msg.value);

        // Update wallet buy amount
        wallets[msg.sender].bnbAmount += _totalTokenAmount;

        totalBNBSold += _totalTokenAmount;

        //added to totalSold
        totalSold += _totalTokenAmount;
    }

    // buyToken funtion to buy tokens
    // @param _amount No of tokens to buy
    function buyTokenMoonShare(uint256 _amount, uint256 _moonshareAmount, string memory _partner) public {
        require(moonshare.transferFrom(msg.sender, address(this), _moonshareAmount), "Could not transfer token");

        require(block.timestamp >= startTime, "Presale hasn't started");

        require(_amount >= 0, "Please enter minimum token!");
        uint256 _id = getCurrentStageIdActive();
        require(_id > 0, "Stage info not available!");
        uint256 _price = stages[_id].price;
        uint256 _end = stages[_id].end;
        require(_end >= block.timestamp, "Presale end!");
        uint256 _totalPayUsd = _amount * _price;
        uint256 _ethToUsd = convertMoonshareToUsd(1e18);
        uint256 _totalPayAmount = _totalPayUsd / _ethToUsd;
        require(_moonshareAmount >= _totalPayAmount, "Not enough payment!");
        uint256 _weiAmount = _amount * 1e18;

        uint256 _totalAmount = _weiAmount;
        uint256 _tokenDecimals = tokenMetadata.decimals();
        uint256 _subDecimals = 18 - _tokenDecimals;
        uint256 _totalTokenAmount = _totalAmount / (10 ** _subDecimals);
        require(_totalTokenAmount <= token.balanceOf(address(this)), "Presale contract doesn't have enough token!");

        require((totalSold + _totalTokenAmount) <= presaleTokenAmount, "Presale token amount exceeds!");

        require(
            (totalMoonShareSold + _totalTokenAmount) <= presaleTokenMoonShareAmount,
            "Presale token amount exceeds MoonShare limit!"
        );

        require(_totalTokenAmount + wallets[msg.sender].moonshareAmount <= maxPerWallet, "Max per wallet is 1M tokens");

        //payment price transfer to dead address
        require(moonshare.transfer(address(0xdead), _moonshareAmount), "Could not transfer token");

        //purchased tokens transfer to buyer address
        require(token.transfer(msg.sender, _totalTokenAmount), "Failed to transfer token!");

        // Add to partner
        partners[_partner].moonshareAmount += (_moonshareAmount);

        // Update wallet buy amount
        wallets[msg.sender].moonshareAmount += _totalTokenAmount;

        totalMoonShareSold += _totalTokenAmount;

        //added to totalSold
        totalSold += _totalTokenAmount;
    }

    // update token address
    function setToken(address _token) public onlyOwner {
        require(_token != address(0), "Token is zero address!");
        token = IERC20(_token);
        tokenMetadata = IERC20Metadata(_token);
    }

    // update price feed address
    function setPriceFeed(address _priceFeed) public onlyOwner {
        require(_priceFeed != address(0), "Token is zero address!");
        priceFeed = AggregatorV3Interface(_priceFeed);
    }

    // update paementAddress
    function setPaymentAddress(address _paymentAddress) public onlyOwner {
        paymentAddress = _paymentAddress;
    }

    // update presaleTokenAmount
    function setPresaleTokenAmount(uint256 _amount) public onlyOwner {
        presaleTokenAmount = _amount;
    }

    // update maximum stage
    function setMaxStage(uint256 _maxStage) public onlyOwner {
        maxStage = _maxStage;
    }

    // update totalSold
    function setTotalSold(uint256 _totalSold) public onlyOwner {
        totalSold = _totalSold;
    }

    // adding stage info
    function addStage(uint256 _bonus, uint256 _price, uint256 _start, uint256 _end) public onlyOwner {
        uint256 _id = currentStageId + 1;
        require(_id <= maxStage, "Maximum stage excceds!");
        require(_bonus <= 100, "Bonus should be between 0 and 100");
        require(_start > 0 && _end > 0, "Invalid date!");
        require(_start < _end, "End date smaller than start!");
        currentStageId += 1;
        stages[_id] = Stage(_id, _bonus, _price, _start, _end);
    }

    // update stage info
    function setStage(uint256 _id, uint256 _bonus, uint256 _price, uint256 _start, uint256 _end) public onlyOwner {
        require(stages[_id].id == _id, "ID doesn't exist!");
        require(_bonus <= 100, "Bonus should be between 0 and 100");
        require(_start > 0 && _end > 0, "Invalid date!");
        require(_start < _end, "End date smaller than start!");
        stages[_id] = Stage(_id, _bonus, _price, _start, _end);
    }

    // get current stage id active
    function getCurrentStageIdActive() public view returns (uint256) {
        uint256 _id = 0;
        if (currentStageId == 0) {
            _id = 0;
        } else {
            for (uint256 i = 1; i <= currentStageId; i++) {
                if ((block.timestamp >= stages[i].start) && (block.timestamp <= stages[i].end)) {
                    _id = i;
                }
            }
        }
        return _id;
    }

    // withdrawFunds functions to get remaining funds transfer
    function withdrawFunds() public onlyOwner {
        require(payable(msg.sender).send(address(this).balance), "Failed withdraw!");
    }

    // withdrawTokens functions to get remaining tokens transfer
    function withdrawTokens(address _to, uint256 _amount) public onlyOwner {
        uint256 _tokenBalance = token.balanceOf(address(this));
        require(_tokenBalance >= _amount, "Exceeds token balance!");
        bool success = token.transfer(_to, _amount);
        require(success, "Failed to transfer token!");
    }

    // withdrawTokens functions to get remaining tokens transfer
    function withdrawMoonshare(address _to, uint256 _amount) public onlyOwner {
        uint256 _tokenBalance = moonshare.balanceOf(address(this));
        require(_tokenBalance >= _amount, "Exceeds token balance!");
        bool success = moonshare.transfer(_to, _amount);
        require(success, "Failed to transfer token!");
    }
}
