declare module '@apiverve/countrylanguages' {
  export interface countrylanguagesOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface countrylanguagesResponse {
    status: string;
    error: string | null;
    data: CountryLanguagesData;
    code?: number;
  }


  interface CountryLanguagesData {
      country:               string;
      name:                  string;
      officialName:          string;
      officialLanguages:     string[];
      officialLanguageCount: number;
  }

  export default class countrylanguagesWrapper {
    constructor(options: countrylanguagesOptions);

    execute(callback: (error: any, data: countrylanguagesResponse | null) => void): Promise<countrylanguagesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: countrylanguagesResponse | null) => void): Promise<countrylanguagesResponse>;
    execute(query?: Record<string, any>): Promise<countrylanguagesResponse>;
  }
}
