// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IMetastrikeBoxV3 {
    function balanceOf(
        address account,
        uint256 tokenId
    ) external returns (uint256);

    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) external;

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts
    ) external;

    function burn(address account, uint256 id, uint256 amount) external;

    function burnBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory amounts
    ) external;
}

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract MetastrikeBoxV3Operator is AccessControl, Pausable, ReentrancyGuard {
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    IMetastrikeBoxV3 public metastrikeBoxV3;

    struct BoxType {
        string name;
        uint256 tokenId;
        uint256 supply;
        uint256 minted;
        uint256 burned;
        uint256 price;
        IERC20 token;
        bool active;
    }

    struct BoxMinted {
        uint256 boxId;
        bool isOpened;
    }

    uint256 public maxAmount = 10;

    mapping(uint256 => bool) public tokenIds;

    mapping(uint256 => BoxType) public boxTypes;

    event GovBoxTypeAdd(uint256 tokendId, BoxType boxType);
    event GovChangeBoxTypeName(uint256 tokendId, string name);
    event GovChangeBoxTypeSupply(uint256 tokendId, uint256 supply);
    event GovChangeBoxTypePrice(uint256 tokendId, uint256 price);
    event GovChangeBoxTypeToken(uint256 tokendId, address token);
    event GovChangeBoxTypeActive(uint256 tokendId, bool active);

    event BoxMint(address user, uint256 tokenId, uint256 amount, bool isGov);
    event BoxMintBatch(
        address user,
        uint256[] tokenIds,
        uint256[] amounts,
        bool isGov
    );
    event BoxBurn(address user, uint256 tokenId, uint256 amount, bool isGov);
    event BoxBurnBatch(
        address user,
        uint256[] tokenIds,
        uint256[] amounts,
        bool isGov
    );

    constructor(address defaultAdmin, address pauser, address minter) {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(MINTER_ROLE, minter);
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function govSetMetastrikeBoxV3(
        address _metastrikeBoxV3
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        metastrikeBoxV3 = IMetastrikeBoxV3(_metastrikeBoxV3);
    }

    function govSetMaxAmount(
        uint256 _maxAmount
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        maxAmount = _maxAmount;
    }

    function govAddBoxType(
        string memory _name,
        uint256 _tokenId,
        uint256 _supply,
        uint256 _price,
        address _token,
        bool _active
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_token != address(0), "invalid token address");
        require(checkTokenIdExists(_tokenId) == false, "_tokenId exists");

        BoxType memory boxType = BoxType({
            name: _name,
            tokenId: _tokenId,
            supply: _supply,
            minted: 0,
            burned: 0,
            price: _price,
            token: IERC20(_token),
            active: _active
        });

        tokenIds[_tokenId] = true;
        boxTypes[_tokenId] = boxType;
        emit GovBoxTypeAdd(_tokenId, boxType);
    }

    function govChangeBoxTypeName(
        uint256 _tokenId,
        string memory _name
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");

        BoxType storage boxType = boxTypes[_tokenId];
        boxType.name = _name;

        emit GovChangeBoxTypeName(_tokenId, _name);
    }

    function govChangeBoxTypeSupply(
        uint256 _tokenId,
        uint256 _supply
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");

        BoxType storage boxType = boxTypes[_tokenId];

        require(_supply >= boxType.supply, "can not exceeds current supply");

        boxType.supply = _supply;

        emit GovChangeBoxTypeSupply(_tokenId, _supply);
    }

    function govChangeBoxTypePrice(
        uint256 _tokenId,
        uint256 _price
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");

        BoxType storage boxType = boxTypes[_tokenId];

        boxType.price = _price;

        emit GovChangeBoxTypePrice(_tokenId, _price);
    }

    function govChangeBoxTypeToken(
        uint256 _tokenId,
        address _token
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_token != address(0), "invalid token address");
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");

        BoxType storage boxType = boxTypes[_tokenId];

        boxType.token = IERC20(_token);

        emit GovChangeBoxTypeToken(_tokenId, _token);
    }

    function govChangeBoxTypeActive(
        uint256 _tokenId,
        bool _active
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");

        BoxType storage boxType = boxTypes[_tokenId];

        boxType.active = _active;

        emit GovChangeBoxTypeActive(_tokenId, _active);
    }

    function mint(uint256 _tokenId, uint256 _amount) public nonReentrant {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");
        require(_amount > 0, "amount must larger than 0");
        require(_amount <= maxAmount, "can not exceeds max amount");

        BoxType storage boxType = boxTypes[_tokenId];

        require(
            boxType.minted + _amount <= boxType.supply,
            "can not exceeds box type supply"
        );

        boxType.minted += _amount;

        boxType.token.transferFrom(
            msg.sender,
            address(this),
            boxType.price * _amount
        );

        metastrikeBoxV3.mint(msg.sender, _tokenId, _amount, "");

        emit BoxMint(msg.sender, _tokenId, _amount, false);
    }

    function mintBatch(
        uint256[] memory _tokenIds,
        uint256[] memory _amounts
    ) public nonReentrant {
        require(checkTokenIdsExists(_tokenIds) == true, "some of _tokenId not exists");
        require(checkBatchLengths(_tokenIds, _amounts), "lenths do not match");

        for (uint i = 0; i < _tokenIds.length; i++) {
            BoxType storage boxType = boxTypes[_tokenIds[i]];

            require(
                boxType.minted + _amounts[i] <= boxType.supply,
                "can not exceeds box type supply"
            );

            boxType.minted += _amounts[i];

            boxType.token.transferFrom(
                msg.sender,
                address(this),
                boxType.price * _amounts[i]
            );

            metastrikeBoxV3.mint(msg.sender, _tokenIds[i], _amounts[i], "");
        }

        emit BoxMintBatch(msg.sender, _tokenIds, _amounts, true);
    }

    function burn(uint256 _tokenId, uint256 _amount) public nonReentrant {
        require(checkTokenIdExists(_tokenId) == true, "_tokenId not exists");
        require(
            metastrikeBoxV3.balanceOf(msg.sender, _tokenId) >= _amount,
            "insufficient nft tokens"
        );

        metastrikeBoxV3.burn(msg.sender, _tokenId, _amount);

        boxTypes[_tokenId].burned += _amount;

        emit BoxBurn(msg.sender, _tokenId, _amount, false);
    }

    function burnBatch(
        uint256[] memory _tokenIds,
        uint256[] memory _amounts
    ) public nonReentrant {
        require(checkTokenIdsExists(_tokenIds) == true, "some of _tokenId not exists");
        require(checkBatchLengths(_tokenIds, _amounts), "lenths do not match");

        for (uint i = 0; i < _tokenIds.length; i++) {
            require(
                metastrikeBoxV3.balanceOf(msg.sender, _tokenIds[i]) >=
                    _amounts[i],
                "some of tokenId amount exeeds user balance"
            );
            metastrikeBoxV3.burn(msg.sender, _tokenIds[i], _amounts[i]);
            boxTypes[_tokenIds[i]].burned += _amounts[i];
        }
        emit BoxBurnBatch(msg.sender, _tokenIds, _amounts, true);
    }

    function govMint(
        address _user,
        uint256 _tokenId,
        uint256 _amount
    ) public nonReentrant {
        checkTokenIdExists(_tokenId);
        require(_amount > 0, "amount must larger than 0");
        require(_amount <= maxAmount, "can not exceeds max amount");

        BoxType storage boxType = boxTypes[_tokenId];

        require(
            boxType.minted + _amount <= boxType.supply,
            "can not exceeds box type supply"
        );

        boxType.minted += _amount;

        metastrikeBoxV3.mint(_user, _tokenId, _amount, "");

        emit BoxMint(_user, _tokenId, _amount, true);
    }

    function govMintBatch(
        address _user,
        uint256[] memory _tokenIds,
        uint256[] memory _amounts
    ) public nonReentrant {
        checkBatchLengths(_tokenIds, _amounts);
        checkTokenIdsExists(_tokenIds);

        for (uint i = 0; i < _tokenIds.length; i++) {
            BoxType storage boxType = boxTypes[_tokenIds[i]];

            require(
                boxType.minted + _amounts[i] <= boxType.supply,
                "can not exceeds box type supply"
            );

            boxType.minted += _amounts[i];

            metastrikeBoxV3.mint(_user, _tokenIds[i], _amounts[i], "");
        }

        emit BoxMintBatch(_user, _tokenIds, _amounts, true);
    }

    function govWithdraw(
        uint256 _amount,
        address _token
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(_token).transfer(
            msg.sender,
            _amount == 0 ? IERC20(_token).balanceOf(address(this)) : _amount
        );
    }

    function checkBatchLengths(
        uint256[] memory _items1,
        uint256[] memory _items2
    ) internal pure returns (bool) {
        uint256 length1 = _items1.length;
        uint256 length2 = _items2.length;
        
        return length1 != 0 && length2 != 0 && length1 == length2 ? true : false;
    }

    function checkTokenIdExists(uint256 _tokenId) internal view returns (bool) {
        return tokenIds[_tokenId];
    }

    function checkTokenIdsExists(
        uint256[] memory _tokenIds
    ) internal view returns (bool) {
        for (uint i = 0; i < _tokenIds.length; i++) {
            if (tokenIds[_tokenIds[i]] == false) {
                return false;
            }
        }

        return true;
    }
}
