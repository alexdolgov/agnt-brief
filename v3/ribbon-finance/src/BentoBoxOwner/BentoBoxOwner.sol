// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;
import "./BoringOwnable.sol";

interface IBentoBox {
    function toAmount(address token, uint256 share, bool roundUp) external view returns (uint256 amount);
    function toShare(address token, uint256 amount, bool roundUp) external view returns (uint256 share);
    function balanceOf(address token, address owner) external view returns (uint256 share);
    function setStrategy(address token, address newStrategy) external;
    function setStrategyTargetPercentage(address token, uint64 targetPercentage_) external;
    function whitelistMasterContract(address masterContract, bool approved) external;
}

contract BentoBoxOwner is BoringOwnable {
    event LogAbraOwned (address indexed token, bool status);
    event LogAbraOwnerTransferred (address indexed oldOwner, address indexed newOwner);
    mapping (address => bool) public isAbraOwned;

    address public abraOwner;

    address public constant MIM_OPS = 0xDF2C270f610Dc35d8fFDA5B453E74db5471E126B;
    address public constant SUSHI_OPS = 0x19B3Eb3Af5D93b77a5619b047De0EED7115A19e7;

    IBentoBox private constant bentoBox = IBentoBox(0xF5BCE5077908a1b7370B9ae04AdC565EBd643966);

    constructor () {
        abraOwner = MIM_OPS;
        emit LogAbraOwnerTransferred(address(0), MIM_OPS);
        owner = SUSHI_OPS;

        address[11] memory ABRA_COINS = 
        [
            0x5958A8DB7dfE0CC49382209069b00F54e17929C2, 
            0xa258C4606Ca8206D8aA700cE2143D7db854D168c,
            0xa9fE4601811213c340e850ea305481afF02f5b28,
            0x27b7b1ad7288079A66d12350c828D3C00A6F07d7,
            0x7Da96a3891Add058AdA2E826306D812C638D87a7,
            0x5f18C75AbDAe578b483E5F43f12a39cF75b973a9,
            0x26FA3fFFB6EfE8c1E69103aCb4044C26B9A106a9,
            0x99D8a9C45b2ecA8864373A26D1459e3Dff1e17F3,
            0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE,
            0x3Ba207c25A278524e1cC7FaAea950753049072A4,
            0xd92494CB921E5C0d3A39eA88d0147bbd82E51008
        ];

        uint256 length = ABRA_COINS.length;

        for (uint i; i < length; i++) {
            isAbraOwned[ABRA_COINS[i]] = true;
            emit LogAbraOwned(ABRA_COINS[i], true);
        }
    }

    modifier onlyAbra {
        require(msg.sender == abraOwner, "NOT ABRA");
        _;
    }

    function transferAbraOwner(address newOwner) external onlyAbra {
        address oldOwner = abraOwner;
        abraOwner = newOwner;
        emit LogAbraOwnerTransferred(oldOwner, newOwner);
    }

    function setStrategyAbraCoin(address token, address newStrategy) external onlyAbra {
        require(isAbraOwned[token], "Not Owned by Abra");
        bentoBox.setStrategy(token, newStrategy);
    }

    function setStrategyTargetPercentageAbraCoin(address token, uint64 targetPercentage) external onlyAbra {
        require(isAbraOwned[token], "Not Owned by Abra");
        bentoBox.setStrategyTargetPercentage(token, targetPercentage);
    }

    function relinquishToken(address token) external onlyAbra {
        isAbraOwned[token] = false;
        emit LogAbraOwned(token, false);
    }

    function handOverControl(address token) external onlyOwner {
        isAbraOwned[token] = true;
        emit LogAbraOwned(token, true);
    }

    function setStrategy(address token, address newStrategy) external onlyOwner {
        require(!isAbraOwned[token], "Token Owned by Abra");
        bentoBox.setStrategy(token, newStrategy);
    }

    function setStrategyTargetPercentage(address token, uint64 targetPercentage) external onlyOwner {
        require(!isAbraOwned[token], "Token Owned by Abra"); 
        bentoBox.setStrategyTargetPercentage(token, targetPercentage);
    }

    function whitelistMasterContract(address masterContract, bool approved) external onlyOwner {
        bentoBox.whitelistMasterContract(masterContract, approved);
    }
}