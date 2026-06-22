pragma solidity ^0.8.0;

library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
      if (a == 0) {
        return 0;
      }
      c = a * b;
      assert(c / a == b);
      return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
      return a / b;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
      assert(b <= a);
      return a - b;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
      c = a + b;
      assert(c >= a);
      return c;
    }
}

interface TOKEN {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface MINTER {
    function mint() external returns (uint256);
}

contract PadFarm {
    using SafeMath for uint256;
    
    uint256 ACTIVATION_TIME = 1620450000;

    modifier isActivated {
        require(block.timestamp >= ACTIVATION_TIME);
        _;
    }
    
    modifier hasDripped {
        if (farmPool > 0 && sharesSupply > 0) {
          uint256 secondsPassed = SafeMath.sub(block.timestamp, lastDripTime);
          uint256 rewards = secondsPassed.mul(farmPool).div(dailyRate);

          if (rewards > farmPool) {
            rewards = farmPool;
          }

          profitPerShare = SafeMath.add(profitPerShare, (rewards * magnitude) / sharesSupply);
          farmPool = farmPool.sub(rewards);
          lastDripTime = block.timestamp;
        }
        _;
    }
    
    modifier padMinted {
        mintPad();
        _;
    }
    
    modifier onlyFarmers {
        require(myShares() > 0);
        _;
    }

    modifier hasRewards {
        require(myRewards() > 0);
        _;
    }

    event onNewStake(
        address indexed farmerAddress,
        uint256 stakedTokens,
        uint256 timestamp
    );

    event onRemoveStake(
        address indexed farmerAddress,
        uint256 tokensRemoved,
        uint256 timestamp
    );

    event onHarvest(
        address indexed farmerAddress,
        uint256 padWithdrawn
    );
    
     event onTokenMint(
        uint256 mintedPad,
        uint256 timestamp
    );

    uint256 constant private magnitude = 2 ** 64;

    uint32 constant private dailyRate = 864000; //10% a day

    mapping(address => uint256) private sharesBalanceLedger;
    mapping(address => int256) private payoutsTo;
    
    mapping(address => uint256) public farmedPad;

    uint256 public farmPool = 0;
    uint256 public lastDripTime = block.timestamp;
    uint256 public mintedPad = 0;

    uint256 private sharesSupply = 0;
    uint256 private profitPerShare = 0;
    
    MINTER minterContract;
    
    TOKEN pad;
    TOKEN acceptedToken;
    

    constructor(address _minter, address _pad, address _acceptedToken) {
        minterContract = MINTER(_minter);
        pad = TOKEN(_pad);
        acceptedToken = TOKEN(_acceptedToken);
    }

    fallback() external payable {
        revert();
    }

    receive() external payable {
       revert();
    }
    
    function checkAndTransfer(uint256 _amount, TOKEN _token) private {
        require(_token.transferFrom(msg.sender, address(this), _amount) == true, "transfer must succeed");
    }

    function mintPad() public {
        uint256 _mintedAmount = minterContract.mint();
        mintedPad += _mintedAmount;
        farmPool = farmPool.add(_mintedAmount);
        emit onTokenMint(_mintedAmount, block.timestamp);
    }
    
    function harvest() hasDripped hasRewards public {
        address _farmerAddress = msg.sender;
        uint256 _rewards = myRewards();
        payoutsTo[_farmerAddress] += (int256) (_rewards.mul(magnitude));
        pad.transfer(_farmerAddress, _rewards);
        farmedPad[_farmerAddress] += _rewards;
        emit onHarvest(_farmerAddress, _rewards);
    }
    
    function deposit(uint256 _amount) isActivated padMinted hasDripped public returns (uint256) {
        address _farmerAddress = msg.sender;
        checkAndTransfer(_amount, acceptedToken);
        return  _addShares(_farmerAddress, _amount);
    }


    function _addShares(address _farmerAddress, uint256 _incomingTokens) private returns (uint256) {
        uint256 _amountOfShares = _incomingTokens;

        require(_amountOfShares > 0 && _amountOfShares.add(sharesSupply) > sharesSupply);
        
        sharesSupply = sharesSupply.add(_amountOfShares);
        sharesBalanceLedger[_farmerAddress] =  sharesBalanceLedger[_farmerAddress].add(_amountOfShares);
        
        int256 _updatedPayouts = (int256) (profitPerShare * _amountOfShares);
        payoutsTo[_farmerAddress] += _updatedPayouts;

        emit onNewStake(_farmerAddress, _incomingTokens, block.timestamp);

        return _amountOfShares;
    }

    function remove(uint256 _amountOfShares) isActivated padMinted hasDripped onlyFarmers public {
        address _farmerAddress = msg.sender;
        require(_amountOfShares > 0 && _amountOfShares <= sharesBalanceLedger[_farmerAddress]);

        sharesSupply = sharesSupply.sub(_amountOfShares);
        sharesBalanceLedger[_farmerAddress] = sharesBalanceLedger[_farmerAddress].sub(_amountOfShares);

        int256 _updatedPayouts = (int256) (profitPerShare * _amountOfShares);
        payoutsTo[_farmerAddress] -= _updatedPayouts;
        
        acceptedToken.transfer(_farmerAddress, _amountOfShares);
        
        emit onRemoveStake(_farmerAddress, _amountOfShares, block.timestamp);
    }

    function totalTokenBalance() public view returns (uint256) {
        return acceptedToken.balanceOf(address(this));
    }

    function totalSupply() public view returns(uint256) {
        return sharesSupply;
    }

    function myShares() public view returns (uint256) {
        address _farmerAddress = msg.sender;
        return sharesOf(_farmerAddress);
    }

    function myEstimateRewards() public view returns (uint256) {
        address _farmerAddress = msg.sender;
        return estimateRewardsOf(_farmerAddress) ;
    }

    function estimateRewardsOf(address _farmerAddress) public view returns (uint256) {
        uint256 _profitPerShare = profitPerShare;

        if (farmPool > 0) {
          uint256 secondsPassed = SafeMath.sub(block.timestamp, lastDripTime);
          
          uint256 dividends = secondsPassed.mul(farmPool).div(dailyRate);

          if (dividends > farmPool) {
            dividends = farmPool;
          }

          _profitPerShare = SafeMath.add(_profitPerShare, (dividends * magnitude) / sharesSupply);
        }

        return (uint256) ((int256) (_profitPerShare * sharesBalanceLedger[_farmerAddress]) - payoutsTo[_farmerAddress]) / magnitude;
    }

    function myRewards() public view returns (uint256) {
        address _farmerAddress = msg.sender;
        return rewardsOf(_farmerAddress) ;
    }

    function rewardsOf(address _farmerAddress) public view returns (uint256) {
        return (uint256) ((int256) (profitPerShare * sharesBalanceLedger[_farmerAddress]) - payoutsTo[_farmerAddress]) / magnitude;
    }

    function sharesOf(address _farmerAddress) public view returns (uint256) {
        return sharesBalanceLedger[_farmerAddress];
    }
}