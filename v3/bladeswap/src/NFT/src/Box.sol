// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "openzeppelin/access/AccessControl.sol";
import "openzeppelin/access/Ownable.sol";
import "openzeppelin/proxy/utils/Initializable.sol";
import "openzeppelin/utils/math/Math.sol";
import "openzeppelin/token/ERC20/ERC20.sol";
import "openzeppelin/token/ERC1155/IERC1155.sol";
import "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import "openzeppelin/utils/Strings.sol";
import "openzeppelin/utils/cryptography/ECDSA.sol";
import "openzeppelin/utils/structs/EnumerableMap.sol";
import "openzeppelin/utils/structs/EnumerableSet.sol";
import "./Token.sol";

import "openzeppelin/token/ERC1155/utils/ERC1155Holder.sol";
import "openzeppelin/token/ERC721/utils/ERC721Holder.sol";
contract Vault is ERC1155Holder, ERC721Holder {
    using TokenLib for Token;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function transfer(Token token, address to, uint256 amount) external {
        require(owner == msg.sender);
        TokenLib.transferFrom(token, address(this), to, amount);
    }
}


contract NFT is ERC1155, Ownable {
    string _contractURI;

    constructor() ERC1155("") {}

    function setContractURI(string memory s) external onlyOwner {
        _contractURI = s;
    }

    function contractURI() public view returns (string memory) {
        return _contractURI;
    }

    function royaltyInfo(
        uint256,
        uint256 _salePrice
    ) external view returns (address receiver, uint256 royaltyAmount) {
        return (owner(), _salePrice / 20);
    }

    function mint(
        address receiver,
        uint256 id,
        uint256 amount
    ) external onlyOwner {
        if (amount > 0) {
            _mint(receiver, id, amount, "");
        }
    }

    function setURI(string calldata newURI) external onlyOwner {
        _setURI(newURI);
    }
}
IBlast constant BLAST = IBlast(0x4300000000000000000000000000000000000002);
interface IBlast {
    enum GasMode {
        VOID,
        CLAIMABLE
    }
    enum YieldMode {
        AUTOMATIC,
        VOID,
        CLAIMABLE
    }

    // configure
    function configureContract(
        address contractAddress,
        YieldMode _yield,
        GasMode gasMode,
        address governor
    ) external;

    function configure(
        YieldMode _yield,
        GasMode gasMode,
        address governor
    ) external;

    // base configuration options
    function configureClaimableYield() external;

    function configureClaimableYieldOnBehalf(address contractAddress) external;

    function configureAutomaticYield() external;

    function configureAutomaticYieldOnBehalf(address contractAddress) external;

    function configureVoidYield() external;

    function configureVoidYieldOnBehalf(address contractAddress) external;

    function configureClaimableGas() external;

    function configureClaimableGasOnBehalf(address contractAddress) external;

    function configureVoidGas() external;

    function configureVoidGasOnBehalf(address contractAddress) external;

    function configureGovernor(address _governor) external;

    function configureGovernorOnBehalf(
        address _newGovernor,
        address contractAddress
    ) external;

    // claim yield
    function claimYield(
        address contractAddress,
        address recipientOfYield,
        uint256 amount
    ) external returns (uint256);

    function claimAllYield(
        address contractAddress,
        address recipientOfYield
    ) external returns (uint256);

    // claim gas
    function claimAllGas(
        address contractAddress,
        address recipientOfGas
    ) external returns (uint256);

    function claimGasAtMinClaimRate(
        address contractAddress,
        address recipientOfGas,
        uint256 minClaimRateBips
    ) external returns (uint256);

    function claimMaxGas(
        address contractAddress,
        address recipientOfGas
    ) external returns (uint256);

    function claimGas(
        address contractAddress,
        address recipientOfGas,
        uint256 gasToClaim,
        uint256 gasSecondsToConsume
    ) external returns (uint256);

    // read functions
    function readClaimableYield(
        address contractAddress
    ) external view returns (uint256);

    function readYieldConfiguration(
        address contractAddress
    ) external view returns (uint8);

    function readGasParams(
        address contractAddress
    )
        external
        view
        returns (
            uint256 etherSeconds,
            uint256 etherBalance,
            uint256 lastUpdated,
            GasMode
        );
}
struct PoolBalance {
    uint256 poolId;
    address poolAddress;
    bytes32[] tokens;
    uint256[] balances;
}

contract Box is AccessControl {
    using TokenLib for Token;
    using ECDSA for bytes32;
    using EnumerableMap for EnumerableMap.UintToUintMap;
    using EnumerableMap for EnumerableMap.AddressToUintMap;
    using EnumerableMap for EnumerableMap.UintToAddressMap;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using SafeERC20 for IERC20;

    bytes32 public SIGNER = bytes32("SIGNER");

    event Draw(
        address indexed addr,
        address indexed referrer,
        uint256 epoch,
        uint256 boxType
    );

    mapping(uint256 => mapping(address => EnumerableMap.UintToUintMap)) _box;
    mapping(uint256 => EnumerableMap.UintToUintMap) _totalBox;
    mapping(uint256 => mapping(address => uint256)) _refCount;
    mapping(address => uint256) _refCountTotal;
    mapping(uint256 => mapping(address => uint256)) _nonces;
    mapping(uint256 => mapping(address => bool)) _epochClaimed;

    EnumerableSet.Bytes32Set _rewards;
    EnumerableMap.UintToAddressMap _vaults;

    function getBoxes(
        address user,
        uint256 epoch
    )
        external
        view
        returns (uint256[] memory boxTypes, uint256[] memory amounts)
    {
        EnumerableMap.UintToUintMap storage m = _box[epoch][user];
        boxTypes = m.keys();
        amounts = new uint256[](m.length());

        for (uint256 i = 0; i < boxTypes.length; i++) {
            amounts[i] = m.get(boxTypes[i]);
        }
    }

    function getTotalBoxes(
        uint256 epoch
    )
        external
        view
        returns (uint256[] memory boxTypes, uint256[] memory amounts)
    {
        EnumerableMap.UintToUintMap storage m = _totalBox[epoch];
        boxTypes = m.keys();
        amounts = new uint256[](m.length());

        for (uint256 i = 0; i < boxTypes.length; i++) {
            amounts[i] = m.get(boxTypes[i]);
        }
    }

    function getBalances() external view returns (PoolBalance[] memory ret) {
        uint256[] memory keys = _vaults.keys();
        bytes32[] memory rewards = _rewards.values();
        ret = new PoolBalance[](_vaults.length());

        for (uint256 i = 0; i < ret.length; i++) {
            ret[i].poolId = keys[i];
            ret[i].poolAddress = _vaults.get(keys[i]);
            ret[i].tokens = rewards;
            ret[i].balances = new uint256[](rewards.length);
            for (uint256 j = 0; j < rewards.length; j++) {
                ret[i].balances[j] = Token.wrap(rewards[j]).balanceOf(
                    ret[i].poolAddress
                );
            }
        }
    }

    function refCount(
        address a,
        uint256 epoch
    ) external view returns (uint256) {
        return _refCount[epoch][a];
    }

    function refCountTotal(
        address a
    ) external view returns (uint256) {
        return _refCountTotal[a];
    }

    function getPool(uint256 i) external view returns (address) {
        return _vaults.get(i);
    }

    function deployPool(uint256 id) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!_vaults.contains(id), "exists");
        _vaults.set(id, address(new Vault()));
    }

    function addReward(Token token) external {
        _rewards.add(Token.unwrap(token));
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        BLAST.configureClaimableGas();
        BLAST.configureGovernor(msg.sender);
    }

    function getDrawNonceCount(uint256 nonce, address addr) external view returns (uint256) {
        return _nonces[nonce][addr];
    }

    function getClaimNonceUsed(uint256 nonce, address addr) external view returns (bool) {
        return _epochClaimed[nonce][addr];
    }

    function draw(
        uint256 boxType,
        uint256 max,
        uint256 deadline,
        uint256 nonce,
        address referrer,
        uint256 refBoxType,
        bytes memory sig
    ) external {
        uint256 epoch = block.timestamp / (7 days);
        require(_nonces[nonce][msg.sender]++ < max, "already drawn");
        require(block.timestamp <= deadline, "expired");
        bytes32 digest = keccak256(
            abi.encode(
                "draw",
                boxType,
                max,
                deadline,
                nonce,
                referrer,
                refBoxType,
                msg.sender
            )
        );
        address signer = digest.toEthSignedMessageHash().recover(sig);
        require(hasRole(SIGNER, signer), "sig error");

        EnumerableMap.UintToUintMap storage m = _box[epoch][msg.sender];
        {
            (bool success, uint256 n) = m.tryGet(boxType);
            m.set(boxType, success ? n + 1 : 1);
        }
        {
            (bool success, uint256 n) = _totalBox[epoch].tryGet(boxType);
            _totalBox[epoch].set(boxType, success ? n + 1 : 1);
        }

        _refCount[epoch][referrer]++;
        _refCountTotal[referrer]++;
        if (_refCountTotal[referrer] % 5 == 0) {
            m = _box[epoch][referrer];
            {
                (bool success, uint256 n) = m.tryGet(refBoxType);
                m.set(refBoxType, success ? n + 1 : 1);
            }
            {
                (bool success, uint256 n) = _totalBox[epoch].tryGet(refBoxType);
                _totalBox[epoch].set(refBoxType, success ? n + 1 : 1);
            }
        }
        emit Draw(msg.sender, referrer, epoch, boxType);
    }

    function claim(
        uint256 nonce,
        uint256 deadline,
        uint256[] memory poolIds,
        Token[] memory tokens,
        uint256[] memory amounts,
        bytes memory sig
    ) external {
        require(!_epochClaimed[nonce][msg.sender], "already claimed");
        require(block.timestamp <= deadline, "expired");
        bytes32 digest = keccak256(
            abi.encode(
                "claim",
                msg.sender,
                nonce,
                deadline,
                poolIds,
                tokens,
                amounts
            )
        );
        address signer = digest.toEthSignedMessageHash().recover(sig);
        require(hasRole(SIGNER, signer), "sig error");
        _epochClaimed[nonce][msg.sender] = true;
        for (uint256 i = 0; i < poolIds.length; i++) {
            Vault(_vaults.get(poolIds[i])).transfer(
                tokens[i],
                msg.sender,
                amounts[i]
            );
        }
    }
}
