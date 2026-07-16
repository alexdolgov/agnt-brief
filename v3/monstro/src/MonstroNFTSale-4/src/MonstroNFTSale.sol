// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

interface IMonstroNFT {
    function mint(address to, uint256 typeId, uint256 quantity) external;
    function totalSupply() external view returns (uint256);
    function totalSupplyByType(uint256 typeId) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
}

interface IMonstroNFTProps {
    function getProperties(
        uint256 tokenId
    ) external view returns (string[] memory);
    function getSingleProperty(
        uint256 tokenId,
        string memory propertyName
    ) external view returns (string memory);
    function setSingleProperty(
        uint256 tokenId,
        string memory propertyName,
        string memory value
    ) external;
    function setMultipleProperties(
        uint256 tokenId,
        string[25] memory propertyNames,
        string[25] memory values
    ) external;
}

/**
 * @title MonstroNFTSale
 * @dev A flexible sale contract allowing multiple sale types with adjustable parameters and payout wallets.
 * Now supports gasless transactions via meta-transactions.
 */
contract MonstroNFTSale is Ownable, EIP712 {
    using ECDSA for bytes32;

    IMonstroNFT private nftContract;
    IMonstroNFTProps private nftProps;
    IERC20 private usdcToken;
    
    // Trusted forwarder for meta-transactions
    address private trustedForwarder;

    struct SaleType {
        uint256 typeId; // Unique NFT type ID for this sale type
        string name; // Name of the sale type
        uint256 minInvestment; // Minimum investment amount in USDC
        uint256 maxMintCount; // Maximum number of NFTs to be minted for this type
        uint256 minAddOn; // Minimum add-on amount in USDC
        uint256 maxAddOn; // Maximum add-on amount in USDC
        address payoutWallet; // Address to receive funds from sales
        bool isActive; // Status of the sale type (active/inactive)
    }

    mapping(uint256 => SaleType) private saleTypes; // Mapping to manage sale types by type ID
    uint256[] private saleTypeIds; // Array to track added sale types
    mapping(uint256 => uint256) private nftSaleType; // Map NFT token IDs to their sale type

    uint256 public totalMinted;
    
    // Nonce tracking for meta-transactions to prevent replay attacks
    mapping(address => uint256) private nonces;

    event SaleTypeAdded(
        uint256 indexed typeId,
        string name,
        uint256 minInvestment,
        uint256 maxMintCount,
        uint256 minAddOn,
        uint256 maxAddOn,
        address payoutWallet
    );
    event SaleTypeUpdated(
        uint256 indexed typeId,
        string name,
        uint256 minInvestment,
        uint256 maxMintCount,
        uint256 minAddOn,
        uint256 maxAddOn,
        address payoutWallet,
        bool isActive
    );
    event Minted(
        address indexed to,
        uint256 typeId,
        uint256 amount,
        address payoutWallet
    );
    event AddOn(address indexed holder, uint256 tokenId, uint256 addOnAmount);
    event SaleTypeAssigned(uint256 indexed tokenId, uint256 typeId);
    event ForwarderUpdated(address forwarder, bool trusted);

    constructor(
        address _nftContractAddress,
        address _usdcTokenAddress,
        address _nftPropsAddress,
        address _trustedForwarder
    ) Ownable(msg.sender) EIP712("MonstroNFTSale", "1") {
        nftContract = IMonstroNFT(_nftContractAddress);
        nftProps = IMonstroNFTProps(_nftPropsAddress);
        usdcToken = IERC20(_usdcTokenAddress);
        trustedForwarder = _trustedForwarder;
    }

    /**
     * @dev Modifier to ensure the sale type is active.
     */
    modifier onlyActiveSaleType(uint256 typeId) {
        require(saleTypes[typeId].isActive, "Sale type is inactive");
        _;
    }

    /**
     * @dev Returns the next nonce for the given address
     */
    function getNonce(address user) external view returns (uint256) {
        return nonces[user];
    }

    /**
     * @dev Updates the trusted forwarder address
     */
    function setTrustedForwarder(address forwarder, bool trusted) external onlyOwner {
        if (trusted) {
            trustedForwarder = forwarder;
        } else if (forwarder == trustedForwarder) {
            trustedForwarder = address(0);
        }
        emit ForwarderUpdated(forwarder, trusted);
    }
    
    /**
     * @dev Returns the current trusted forwarder
     */
    function getTrustedForwarder() external view returns (address) {
        return trustedForwarder;
    }
    
    /**
     * @dev Returns true if the caller is the trusted forwarder
     */
    function isTrustedForwarder(address forwarder) public view returns (bool) {
        return forwarder == trustedForwarder;
    }
    
    /**
     * @dev Returns the sender of the transaction (handles meta-transactions)
     */
    function _msgSender() internal view override returns (address) {
        if (isTrustedForwarder(msg.sender)) {
            // Extract the sender address from the calldata
            bytes memory callData = msg.data;
            if (callData.length >= 20) {
                address sender;
                assembly {
                    sender := shr(96, calldataload(sub(calldatasize(), 20)))
                }
                return sender;
            }
        }
        return msg.sender;
    }

    /**
     * @dev Adds a new sale type with specific parameters.
     */
    function addSaleType(
        uint256 typeId,
        string memory name,
        uint256 minInvestment,
        uint256 maxMintCount,
        uint256 minAddOn,
        uint256 maxAddOn,
        address payoutWallet
    ) external onlyOwner {
        require(saleTypes[typeId].typeId == 0, "Sale type already exists");

        saleTypes[typeId] = SaleType(
            typeId,
            name,
            minInvestment,
            maxMintCount,
            minAddOn,
            maxAddOn,
            payoutWallet,
            true
        );
        saleTypeIds.push(typeId);

        emit SaleTypeAdded(
            typeId,
            name,
            minInvestment,
            maxMintCount,
            minAddOn,
            maxAddOn,
            payoutWallet
        );
    }

    /**
     * @dev Assigns a sale type to multiple NFT token IDs.
     */
    function assignSaleTypeToTokens(
        uint256[] calldata tokenIds,
        uint256 typeId
    ) external onlyOwner onlyActiveSaleType(typeId) {
        require(saleTypes[typeId].typeId != 0, "Invalid sale type");

        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(
                nftContract.ownerOf(tokenIds[i]) != address(0),
                "NFT does not exist"
            );

            nftSaleType[tokenIds[i]] = typeId;

            emit SaleTypeAssigned(tokenIds[i], typeId);
        }
    }

    /**
     * @dev Mints NFTs based on the specified sale type, with USDC payment.
     */
    function mintAndInvest(
        uint256 typeId,
        uint256 baseAmount
    ) external onlyActiveSaleType(typeId) {
        _mintAndInvest(typeId, baseAmount, _msgSender());
    }

    /**
     * @dev Gasless version of mintAndInvest that uses a signature from the user
     */
    function gaslessMintAndInvest(
        uint256 typeId,
        uint256 baseAmount,
        address user,
        uint256 deadline,
        bytes memory signature
    ) external onlyActiveSaleType(typeId) {
        require(block.timestamp <= deadline, "Signature expired");
        
        // Verify the signature
        bytes32 structHash = keccak256(
            abi.encode(
                keccak256("MintAndInvest(uint256 typeId,uint256 baseAmount,address user,uint256 nonce,uint256 deadline)"),
                typeId,
                baseAmount,
                user,
                nonces[user],
                deadline
            )
        );
        
        bytes32 hash = _hashTypedDataV4(structHash);
        address signer = hash.recover(signature);
        require(signer == user, "Invalid signature");
        
        // Increment nonce
        nonces[user]++;
        
        // Execute the mint
        _mintAndInvest(typeId, baseAmount, user);
    }

    /**
     * @dev Internal function to mint NFTs with USDC payment
     */
    function _mintAndInvest(
        uint256 typeId,
        uint256 baseAmount,
        address user
    ) internal onlyActiveSaleType(typeId) {
        SaleType memory sale = saleTypes[typeId];

        uint256 currentSupply = nftContract.totalSupplyByType(sale.typeId);
        require(currentSupply < sale.maxMintCount, "Sale type sold out");

        require(baseAmount >= sale.minInvestment, "Investment below minimum");

        uint256 totalAmount = (baseAmount / 1e6) * 1e6;

        // Transfer funds to the payout wallet immediately upon sale
        usdcToken.transferFrom(user, sale.payoutWallet, totalAmount);

        uint256 tokenId = totalMinted;
        nftContract.mint(user, sale.typeId, 1);
        nftSaleType[tokenId] = typeId; // Map the tokenId to its sale type

        // Initialize the "investment" property with the base amount as a string and "mintDate" with current timestamp
        string[25] memory propertyNames;
        propertyNames[0] = "investment";
        propertyNames[1] = "mintDate";
        string[25] memory propertyValues;
        propertyValues[0] = uintToStr(baseAmount);
        propertyValues[1] = uintToStr(block.timestamp);
        nftProps.setMultipleProperties(tokenId, propertyNames, propertyValues);

        //Increment internal tokenId counter
        totalMinted += 1;

        emit Minted(user, sale.typeId, totalAmount, sale.payoutWallet);
    }

    /**
     * @dev Allows anyone to add funds to an existing NFT even if they do not own it.
     */
    function addOnFunds(uint256 tokenId, uint256 addOnAmount) external {
        _addOnFunds(tokenId, addOnAmount, _msgSender());
    }

    /**
     * @dev Gasless version of addOnFunds that uses a signature from the user
     */
    function gaslessAddOnFunds(
        uint256 tokenId,
        uint256 addOnAmount,
        address user,
        uint256 deadline,
        bytes memory signature
    ) external {
        require(block.timestamp <= deadline, "Signature expired");
        
        // Verify the signature
        bytes32 structHash = keccak256(
            abi.encode(
                keccak256("AddOnFunds(uint256 tokenId,uint256 addOnAmount,address user,uint256 nonce,uint256 deadline)"),
                tokenId,
                addOnAmount,
                user,
                nonces[user],
                deadline
            )
        );
        
        bytes32 hash = _hashTypedDataV4(structHash);
        address signer = hash.recover(signature);
        require(signer == user, "Invalid signature");
        
        // Increment nonce
        nonces[user]++;
        
        // Execute the add-on
        _addOnFunds(tokenId, addOnAmount, user);
    }

    /**
     * @dev Internal function to add funds to an existing NFT
     */
    function _addOnFunds(uint256 tokenId, uint256 addOnAmount, address user) internal {
        uint256 typeId = nftSaleType[tokenId];
        SaleType memory sale = saleTypes[typeId];

        require(sale.isActive, "Sale type is inactive");
        require(
            nftContract.ownerOf(tokenId) != address(0),
            "NFT does not exist"
        );
        require(
            addOnAmount >= sale.minAddOn && addOnAmount <= sale.maxAddOn,
            "Add-on amount out of range"
        );

        // Transfer add-on amount to the payout wallet
        usdcToken.transferFrom(user, sale.payoutWallet, addOnAmount);

        // Update the "investment" property
        string memory currentInvestment = nftProps.getSingleProperty(
            tokenId,
            "investment"
        );
        uint256 updatedInvestment = addOnAmount + strToUint(currentInvestment);
        nftProps.setSingleProperty(
            tokenId,
            "investment",
            uintToStr(updatedInvestment)
        );

        emit AddOn(user, tokenId, addOnAmount);
    }

    /**
     * @dev Updates an existing sale type.
     */
    function updateSaleType(
        uint256 typeId,
        string memory name,
        uint256 minInvestment,
        uint256 maxMintCount,
        uint256 minAddOn,
        uint256 maxAddOn,
        address payoutWallet,
        bool isActive
    ) external onlyOwner {
        require(saleTypes[typeId].typeId != 0, "Sale type does not exist");

        saleTypes[typeId] = SaleType(
            typeId,
            name,
            minInvestment,
            maxMintCount,
            minAddOn,
            maxAddOn,
            payoutWallet,
            isActive
        );

        emit SaleTypeUpdated(
            typeId,
            name,
            minInvestment,
            maxMintCount,
            minAddOn,
            maxAddOn,
            payoutWallet,
            isActive
        );
    }

    /**
     * @dev Returns all sale types that have been added to the contract.
     */
    function getAllSaleTypes() external view returns (SaleType[] memory) {
        SaleType[] memory allSaleTypes = new SaleType[](saleTypeIds.length);

        uint256 j = 0;
        for (uint256 i = 0; i < saleTypeIds.length; i++) {
            uint256 typeId = saleTypeIds[i];
            if (saleTypes[typeId].isActive) {
                allSaleTypes[j] = saleTypes[typeId];
                j++;
            }
        }

        return allSaleTypes;
    }

    /**
     * @dev Retrieves the sale type ID assigned to a specific NFT token ID.
     */
    function getSaleTypeForToken(
        uint256 tokenId
    ) external view returns (uint256) {
        require(nftSaleType[tokenId] != 0, "No sale type assigned to token");
        return nftSaleType[tokenId];
    }

    /**
     * @dev Returns the total minted NFTs for a specific sale type.
     */
    function getTotalMintedBySaleType(
        uint256 typeId
    ) external view returns (uint256) {
        SaleType memory sale = saleTypes[typeId];
        return nftContract.totalSupplyByType(sale.typeId);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function uintToStr(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 temp = _i;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (_i != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(_i % 10)));
            _i /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `string` to its `uint256` representation.
     */
    function strToUint(string memory s) internal pure returns (uint256) {
        bytes memory b = bytes(s);
        uint256 result = 0;
        for (uint256 i = 0; i < b.length; i++) {
            require(
                b[i] >= 0x30 && b[i] <= 0x39,
                "Invalid character in string"
            ); // Ensure it's a digit
            result = result * 10 + (uint256(uint8(b[i])) - 48);
        }
        return result;
    }

    /**
     * @dev Updates the total number of minted NFTs.
     */
    function updateTotalMinted(uint256 _count) external onlyOwner {
        totalMinted = _count;
    }
}
