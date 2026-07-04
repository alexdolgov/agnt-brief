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
    function mint(address to, uint256 amount) external;
}

contract Ownable {
    address public owner;

    constructor() {
      owner = address(0x201B8b73E2D5F03606081e48205bB97306BEbd65); //Multisig gnosis address
    }

    modifier onlyOwner() {
      require(msg.sender == owner);
      _;
    }
}

contract Minter is Ownable {
    using SafeMath for uint256;

    bool private initialized = false; //syncs minter and vault

    modifier hasUpdated {
        if (remainingSupply > 0 && sharesSupply > 0) {
          uint256 secondsPassed = SafeMath.sub(block.timestamp, lastMintTime);
          uint256 mintAmount = secondsPassed.mul(remainingSupply).div(dailyRate);

          if (mintAmount > remainingSupply) {
            mintAmount = remainingSupply;
          }

          profitPerShare = SafeMath.add(profitPerShare, (mintAmount * mintMagnitude) / sharesSupply);
          remainingSupply = remainingSupply.sub(mintAmount);
          lastMintTime = block.timestamp;
        }
        _;
    }

    modifier onlyPositiveBal {
        require(myMintShare() > 0);
        _;
    }

    event onAddShares(
        address indexed farmAddress,
        uint256 shares,
        uint256 timestamp
    );

    event onRemoveShares(
        address indexed farmAddress,
        uint256 shares,
        uint256 timestamp
    );

    event onMint(
        address indexed farmAddress,
        uint256 tokensMinted
    );

    uint256 constant private mintMagnitude = 2 ** 64;

    uint32 constant private dailyRate = 66461539; //0.12999999894% a day

    mapping(address => uint256) public sharesBalanceLedger;
    mapping(address => int256) private mintedBy;

    uint256 public remainingSupply = 190*1e9*1e18; //200 bil max supply - 10 bil preminted
    uint256 public lastMintTime = 1620447900;

    uint256 private sharesSupply = 0;
    uint256 private profitPerShare = 0;

    TOKEN bep20;


    fallback() external payable {
        revert();
    }

    receive() external payable {
        revert();
    }

    function mint() hasUpdated onlyPositiveBal external returns(uint256){
        address _contractAddress = msg.sender;
        uint256 _mintAmount = myMintShare();
        mintedBy[_contractAddress] += (int256) (_mintAmount * mintMagnitude);
        bep20.mint(_contractAddress, _mintAmount);
        emit onMint(_contractAddress, _mintAmount);
        return _mintAmount;
    }

    function addSharesFor(address _contractAddress, uint256 _shares) hasUpdated onlyOwner public returns (uint256) {
        return _addShares(_contractAddress, _shares);
    }

    function _addShares(address _contractAddress, uint256 _amountOfShares) private returns(uint256) {
        require(_amountOfShares > 0 && _amountOfShares.add(sharesSupply) > sharesSupply);

        sharesSupply = sharesSupply.add(_amountOfShares);
        sharesBalanceLedger[_contractAddress] = sharesBalanceLedger[_contractAddress].add(_amountOfShares);

        int256 _updatedMintedBy = (int256) (profitPerShare * _amountOfShares);
        mintedBy[_contractAddress] += _updatedMintedBy;

        emit onAddShares(_contractAddress, _amountOfShares, block.timestamp);

        return _amountOfShares;
    }

    function removeSharesFor(address _contractAddress, uint256 _shares) hasUpdated onlyOwner public {
        require(_shares > 0 && _shares <= sharesBalanceLedger[_contractAddress]);

        sharesSupply = sharesSupply.sub(_shares);
        sharesBalanceLedger[_contractAddress] = sharesBalanceLedger[_contractAddress].sub(_shares);

        int256 _updatedPayouts = (int256) (profitPerShare * _shares);
        mintedBy[_contractAddress] -= _updatedPayouts;

        emit onRemoveShares(_contractAddress, _shares, block.timestamp);
    }

    function totalSupply() public view returns(uint256) {
        return sharesSupply;
    }

    function myShares() public view returns (uint256) {
        address _contractAddress = msg.sender;
        return sharesOf(_contractAddress);
    }

    function myEstimatedMintShare() public view returns (uint256) {
        address _contractAddress = msg.sender;
        return estimateMintShareOf(_contractAddress);
    }

    function estimateMintShareOf(address _contractAddress) public view returns (uint256) {
        uint256 _profitPerShare = profitPerShare;

        if (remainingSupply > 0) {
            uint256 secondsPassed = SafeMath.sub(block.timestamp, lastMintTime);

            uint256 mintAmount = secondsPassed.mul(remainingSupply).div(dailyRate);

            if (mintAmount > remainingSupply) {
                mintAmount = remainingSupply;
            }

          _profitPerShare = SafeMath.add(_profitPerShare, (mintAmount * mintMagnitude) / sharesSupply);
        }

        return (uint256) ((int256) (_profitPerShare * sharesBalanceLedger[_contractAddress]) - mintedBy[_contractAddress]) / mintMagnitude;
    }

    function myMintShare() public view returns (uint256) {
        address _contractAddress = msg.sender;
        return mintShareOf(_contractAddress) ;
    }

    function mintShareOf(address _contractAddress) public view returns (uint256) {
        return (uint256) ((int256) (profitPerShare * sharesBalanceLedger[_contractAddress]) - mintedBy[_contractAddress]) / mintMagnitude;
    }

    function sharesOf(address _contractAddress) public view returns (uint256) {
        return sharesBalanceLedger[_contractAddress];
    }

    function setTokenAfterDeploy(address _tokenAddress) onlyOwner public returns (address){
        require(initialized == false, 'A token has already been set for this contract.');
        bep20 = TOKEN(address(_tokenAddress)); //pad
        initialized = true;
        return _tokenAddress;
    }
}
