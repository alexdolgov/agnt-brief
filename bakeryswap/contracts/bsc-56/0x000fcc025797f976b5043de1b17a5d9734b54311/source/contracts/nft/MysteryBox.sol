// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

import '@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/ERC721PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '../libraries/RandomGenUtils.sol';

contract MysteryBox is ERC721PausableUpgradeable, OwnableUpgradeable {
    using SafeMathUpgradeable for uint256;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 private constant ONE_POWER_EIGHTEEN = 1E18;
    uint256 public startBlock;
    uint256 public endBlock;
    uint256 public nextTokenId;
    uint256 public maxTokenId; // nextTokenId <= maxTokenId
    IERC721EnumerableUpgradeable public targetNFT;
    address public devAddress;
    address public devAddressSetter;
    address public finAddress;
    address public finAddressSetter;
    mapping(address => uint256) public payTokenPrices;
    mapping(address => bool) public payTokenToBurns;

    event Mint(address indexed user, uint256 indexed tokenId, address indexed payToken, uint256 price);
    event Open(address indexed sender, uint256 tokenId, uint256 carNFTId);

    event SetFinAddress(address indexed prevFinAddress, address indexed finAddress);
    event SetFinAddressSetter(address indexed prevFinAddressSetter, address indexed finAddressSetter);

    function initialize(
        string memory name,
        string memory symbol,
        string memory _baseURI,
        uint256 _startBlock,
        uint256 _endBlock,
        uint256 _maxTokenId,
        address _targetNFT,
        address _finAddress,
        address[] memory _tokens,
        uint256[] memory _prices,
        bool[] memory _burns
    ) public initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        __ERC165_init_unchained();
        __Pausable_init_unchained();
        __ERC721Pausable_init_unchained();
        __ERC721_init_unchained(name, symbol);
        _setBaseURI(_baseURI);
        startBlock = _startBlock;
        endBlock = _endBlock;
        maxTokenId = _maxTokenId;
        targetNFT = IERC721EnumerableUpgradeable(_targetNFT);
        finAddress = _finAddress;
        finAddressSetter = _msgSender();
        setPayTokenInfos(_tokens, _prices, _burns);
    }

    function setStartBlock(uint256 _startBlock) public onlyOwner {
        startBlock = _startBlock;
    }

    function setEndBlock(uint256 _endBlock) public onlyOwner {
        endBlock = _endBlock;
    }

    function setPayTokenInfos(
        address[] memory _tokens,
        uint256[] memory _prices,
        bool[] memory _burns
    ) public onlyOwner {
        require(_tokens.length == _prices.length, 'l');
        for (uint256 i = 0; i < _tokens.length; ++i) {
            payTokenPrices[_tokens[i]] = _prices[i];
            payTokenToBurns[_tokens[i]] = _burns[i];
        }
    }

    function mint(address _payToken, uint256 _amount) external returns (uint256[] memory tokenIds) {
        require(block.number >= startBlock, 's');
        require(endBlock == 0 || block.number <= endBlock, 'e');
        require(tx.origin == msg.sender, 'd');
        // pay token disable
        require(payTokenPrices[_payToken] != 0, 't');
        //  amount too small
        require(_amount >= payTokenPrices[_payToken], 'a');
        uint256 size = MathUpgradeable.min(maxTokenId.sub(nextTokenId), _amount.div(payTokenPrices[_payToken]));
        require(size != 0, 'e');
        _amount = size.mul(payTokenPrices[_payToken]);
        if (payTokenToBurns[_payToken]) {
            ERC20BurnableUpgradeable(_payToken).burnFrom(_msgSender(), _amount);
        } else {
            IERC20Upgradeable(_payToken).safeTransferFrom(_msgSender(), finAddress, _amount);
        }
        tokenIds = new uint256[](size);
        for (uint256 i = 0; i < size; ++i) {
            tokenIds[i] = nextTokenId;
            _mint(_msgSender(), tokenIds[i]);
            nextTokenId++;
            emit Mint(_msgSender(), tokenIds[i], _payToken, payTokenPrices[_payToken]);
        }
    }

    function open(uint256 tokenId) public {
        require(tx.origin == msg.sender, 'd');
        require(_isApprovedOrOwner(_msgSender(), tokenId), 'caller is not owner nor approved');
        _burn(tokenId);
        uint256 targetId =
            targetNFT.tokenOfOwnerByIndex(
                address(this),
                RandomGenUtils.randomGen(tokenId, targetNFT.balanceOf(address(this)))
            );
        targetNFT.safeTransferFrom(address(this), _msgSender(), targetId);
        emit Open(_msgSender(), tokenId, targetId);
    }

    function getPayTokenPrices(address[] memory _payTokens) public view returns (uint256[] memory prices) {
        prices = new uint256[](_payTokens.length);
        for (uint256 i = 0; i < _payTokens.length; ++i) {
            prices[i] = payTokenPrices[_payTokens[i]];
        }
    }

    function burn(uint256 _tokenId) public virtual {
        require(_isApprovedOrOwner(_msgSender(), _tokenId), 'ERC721Burnable: caller is not owner nor approved');
        _burn(_tokenId);
    }

    function setFinAddress(address _finAddress) public {
        require(_msgSender() == finAddressSetter, 'forbidden');
        finAddress = _finAddress;
        emit SetFinAddress(_msgSender(), finAddress);
    }

    function setFinAddressSetter(address _finAddressSetter) public {
        require(_msgSender() == finAddressSetter || _msgSender() == owner(), 'forbidden');
        finAddressSetter = _finAddressSetter;
        emit SetFinAddressSetter(_msgSender(), finAddressSetter);
    }

    function setBaseURI(string memory _baseURI) public onlyOwner {
        _setBaseURI(_baseURI);
    }

    function setTokenURI(uint256 _tokenId, string memory _tokenURI) public onlyOwner {
        _setTokenURI(_tokenId, _tokenURI);
    }

    function setTokenURIs(uint256[] memory _tokenIds, string[] memory _tokenURIs) public onlyOwner {
        require(_tokenIds.length == _tokenURIs.length, 'length error');
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            _setTokenURI(_tokenIds[i], _tokenURIs[i]);
        }
    }

    function pause() public onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() public onlyOwner whenPaused {
        _unpause();
    }

    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner {
        IERC20Upgradeable(_tokenAddress).transfer(_msgSender(), _amount);
    }

    function transferAnyERC721Token(address _tokenAddress, uint256[] memory _tokenIds) public onlyOwner {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            IERC721Upgradeable(_tokenAddress).transferFrom(address(this), _msgSender(), _tokenIds[i]);
        }
    }
}
