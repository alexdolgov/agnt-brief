// SPDX-License-Identifier: MIT

pragma solidity 0.7.4;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "../interfaces/IBabyWonderlandMintable.sol";
import "../core/SafeOwnable.sol";

contract SmartMintableInitializableV2 is ReentrancyGuard, SafeOwnable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    // The address of the smart minter factory
    address public immutable SMART_MINTER_FACTORY;
    IBabyWonderlandMintable public babyWonderlandToken;
    IERC20 public payToken;
    bool public isInitialized;
    address payable public reserve;
    uint256 public startTime;
    uint256 public endTime;
    uint256 public supply;
    uint256 public remaning;
    uint256 public poolLimitPerUser;
    uint256 public plotsCapacity;
    bool public hasWhitelistLimit;
    mapping(address => uint256) public numberOfUsersMinted;
    mapping(uint => bool) public types;
    mapping(uint => uint) public typePrices;
    address public validator;

    event MintPlots(address account, uint256 startTokenId, uint256 number);
    event NewReserve(address oldReserve, address newReserve);
    event AddWhitelist(address addr);
    event DelWhitelist(address addr);
    event TypePriceChanged(uint landType, uint oldPrice, uint newPrice);
    event ValidatorChanged(address oldValidator, address newValidator);
    event TypeDeleted(uint landType);

    constructor() {
        SMART_MINTER_FACTORY = msg.sender;
    }

    function initialize(
        address _babyWonderlandToken,
        address payable _reserve,
        address _payToken,
        uint256 _price,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _supply,
        uint256 _poolLimitPerUser,
        uint256 _plotsCapacity,
        bool _hasWhitelistLimit
    ) external {
        require(!isInitialized, "Already initialized the contract");
        require(msg.sender == SMART_MINTER_FACTORY, "Not factory");
        require(_reserve != address(0), "_reserve can not be address(0)");
        require(_startTime <= _endTime, "invalid time params");
        require(_poolLimitPerUser > 0, "_poolLimitPerUser can not be 0");
        require(_plotsCapacity > 0, "_plotsCapacity can not be 0");
        // Make this contract initialized
        isInitialized = true;
        babyWonderlandToken = IBabyWonderlandMintable(_babyWonderlandToken);
        reserve = _reserve;
        payToken = IERC20(_payToken);
        if (_price > 0) {
            setTypePrice(1, _price);
        }
        startTime = _startTime;
        endTime = _endTime;
        supply = _supply;
        remaning = _supply;
        poolLimitPerUser = _poolLimitPerUser;
        hasWhitelistLimit = _hasWhitelistLimit;
        plotsCapacity = _plotsCapacity;
        _transferOwnership(tx.origin);
    }

    function setTypePrice(uint _type, uint _price) public onlyOwner {
        require(!types[_type], "type already exists");
        types[_type] = true;
        emit TypePriceChanged(_type,  typePrices[_type], _price);
        typePrices[_type] = _price;
    }

    function setValidator(address _validator) external onlyOwner {
        emit ValidatorChanged(validator, _validator);
        validator = _validator;
    }

    function mint(uint _type, uint8 _v, bytes32 _r, bytes32 _s) external payable nonReentrant onlyWhitelist(_type, _v, _r, _s) {
        require(block.timestamp > startTime, "has not started");
        require(block.timestamp < endTime, "has expired");
        require(types[_type], "illegal type");
        uint _price = typePrices[_type];
        require(
            numberOfUsersMinted[msg.sender] < poolLimitPerUser,
            "purchase limit reached"
        );
        if (address(payToken) == address(0)) {
            require(msg.value == _price, "not enough tokens to pay");
            Address.sendValue(reserve, _price);
        } else {
            payToken.safeTransferFrom(msg.sender, reserve, _price);
        }
        numberOfUsersMinted[msg.sender] += 1;
        require(remaning > 0, "insufficient remaining");
        remaning -= 1;
        babyWonderlandToken.batchMint(msg.sender, plotsCapacity);

        emit MintPlots(
            msg.sender,
            babyWonderlandToken.totalSupply() + 1,
            plotsCapacity
        );
    }

    function batchMint(uint256 number, uint _type, uint8 _v, bytes32 _r, bytes32 _s) external payable nonReentrant onlyWhitelist(_type, _v, _r, _s) {
        require(block.timestamp > startTime, "has not started");
        require(block.timestamp < endTime, "has expired");
        require(types[_type], "illegal type");
        uint _price = typePrices[_type];
        require(
            numberOfUsersMinted[msg.sender].add(number) <= poolLimitPerUser,
            "purchase limit reached"
        );
        uint totalAmount = _price.mul(number);
        if (address(payToken) == address(0)) {
            require(
                msg.value == totalAmount,
                "not enough tokens to pay"
            );
            Address.sendValue(reserve, totalAmount);
        } else {
            payToken.safeTransferFrom(msg.sender, reserve, totalAmount);
        }
        numberOfUsersMinted[msg.sender] += number;
        for (uint256 i = 0; i != number; i++) {
            require(remaning > 0, "insufficient remaining");
            remaning -= 1;
            babyWonderlandToken.batchMint(msg.sender, plotsCapacity);

            emit MintPlots(
                msg.sender,
                babyWonderlandToken.totalSupply() + 1,
                plotsCapacity
            );
        }
    }

    modifier onlyWhitelist(uint _type, uint8 _v, bytes32 _r, bytes32 _s) {
        if (hasWhitelistLimit) {
            address recover = ecrecover(
                keccak256(abi.encodePacked(
                    "\x19Ethereum Signed Message:\n32", 
                    keccak256(abi.encodePacked(
                        address(this), msg.sender, _type
                    ))
                )),
                _v, _r, _s
            );
            require(recover != address(0) && recover == validator, "illegal signature");
        }
        _;
    }
}

contract BabyWonderlandMakeFactoryV2 is SafeOwnable {
    uint256 private nonce;

    address immutable public babyWonderlandToken;

    event NewSmartMintableContract(address indexed smartChef);

    constructor(address _babyWonderlandToken) {
        require(_babyWonderlandToken != address(0), "illegal token address");
        babyWonderlandToken = _babyWonderlandToken;
    }

    function deployMintable(
        address payable _reserve,
        address _payToken,
        uint256 _price,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _supply,
        uint256 _poolLimitPerUser,
        uint256 _plotsCapacity,
        bool _hasWhitelistLimit
    ) external onlyOwner {
        nonce = nonce + 1;
        bytes memory bytecode = type(SmartMintableInitializableV2).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(nonce));
        address smartMintableAddress;

        assembly {
            smartMintableAddress := create2(
                0,
                add(bytecode, 32),
                mload(bytecode),
                salt
            )
        }
        SmartMintableInitializableV2(smartMintableAddress).initialize(
            babyWonderlandToken,
            _reserve,
            _payToken,
            _price,
            _startTime,
            _endTime,
            _supply,
            _poolLimitPerUser,
            _plotsCapacity,
            _hasWhitelistLimit
        );
        emit NewSmartMintableContract(smartMintableAddress);
    }
}
