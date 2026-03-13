## Vector DB Use Case

Traditional keyword-based search systems rely on exact word matching. While this approach works for simple queries, it becomes ineffective when users phrase questions differently from how the information appears in documents. In the case of a law firm searching through large contracts, lawyers may ask questions in natural language such as "What are the termination clauses?" even if the contract uses slightly different wording.

A keyword search system may fail to retrieve relevant sections because it only looks for specific words. If the contract uses phrases like "conditions for agreement termination" instead of "termination clause," a keyword search may miss the relevant section.

Vector databases solve this problem by using embeddings that capture the semantic meaning of text. When contracts are converted into embeddings, the system stores them as vectors representing their meaning rather than just keywords. When a lawyer asks a question, the query is also converted into a vector.

The vector database then performs similarity search to find contract sections whose meaning is closest to the query. This allows the system to return relevant results even when the wording is different.

Therefore, a vector database plays a critical role in enabling semantic search across long legal documents. It improves search accuracy, reduces time spent reviewing contracts, and helps lawyers quickly locate the information they need.

